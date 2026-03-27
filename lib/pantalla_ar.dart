import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:camera/camera.dart';

class PantallaAR extends StatefulWidget {
  final String assetPath;

  const PantallaAR({super.key, required this.assetPath});

  @override
  State<PantallaAR> createState() => _PantallaARState();
}

class _PantallaARState extends State<PantallaAR> {
  CameraController? _controller;
  bool _cameraReady = false;

  // Posición y tamaño del producto
  double _posX = 100;
  double _posY = 200;
  double _size = 220;

  double _startSize = 220;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    _initCamera();
  }

  Future<void> _initCamera() async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) return;
    _controller = CameraController(cameras.first, ResolutionPreset.high);
    await _controller!.initialize();
    if (mounted) setState(() => _cameraReady = true);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Vista AR', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline, color: Colors.white),
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Arrastra el producto • Pellizca para cambiar el tamaño')),
            ),
          ),
        ],
      ),
      body: _cameraReady
          ? Stack(
              children: [
                // Feed de cámara
                SizedBox.expand(
                  child: CameraPreview(_controller!),
                ),
                // Producto superpuesto
                Positioned(
                  left: _posX,
                  top: _posY,
                  child: GestureDetector(
                    onScaleStart: (details) {
                      _startSize = _size;
                    },
                    onScaleUpdate: (details) {
                      setState(() {
                        // Arrastre
                        _posX += details.focalPointDelta.dx;
                        _posY += details.focalPointDelta.dy;
                        // Zoom
                        final newSize = (_startSize * details.scale).clamp(80.0, 500.0);
                        _size = newSize;
                      });
                    },
                    child: Image.asset(
                      widget.assetPath,
                      width: _size,
                      height: _size,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // Instrucción inicial
                Positioned(
                  bottom: 24,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'Arrastra para mover • Pellizca para cambiar el tamaño',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ],
            )
          : const Center(child: CircularProgressIndicator(color: Colors.white)),
    );
  }
}
