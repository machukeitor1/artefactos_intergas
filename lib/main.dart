import 'package:flutter/material.dart';
import 'pantalla_productos.dart';
import 'splash_screen.dart';

void main() {
  runApp(const ProductosApp());
}

class ProductosApp extends StatelessWidget {
  const ProductosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Artefactos Intergas',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorías'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoriaButton(
              texto: 'Calefón',
              color: Colors.orange,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const PantallaProductos(categoria: 'Calefón'),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            CategoriaButton(
              texto: 'Caldera',
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const PantallaProductos(categoria: 'Caldera'),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            CategoriaButton(
              texto: 'Calefactor',
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const PantallaProductos(categoria: 'Calefactor'),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            CategoriaButton(
              texto: 'Encimera',
              color: Colors.deepPurple,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const PantallaProductos(categoria: 'Encimera'),
                  ),
                );
              },
            ),
            const SizedBox(height: 16),
            CategoriaButton(
              texto: 'Cocina',
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const PantallaProductos(categoria: 'Cocina'),
                  ),
                );
              },
            ),
            const SizedBox(height: 30),
            const Text(
              'Creado por Cristian Machuca - Versión App 1.2',
              style: TextStyle(fontSize: 14, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriaButton extends StatelessWidget {
  final String texto;
  final Color color;
  final VoidCallback onPressed;

  const CategoriaButton({
    super.key,
    required this.texto,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          texto,
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
    );
  }
}
