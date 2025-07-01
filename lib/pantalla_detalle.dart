import 'package:flutter/material.dart';
import 'productos_data.dart';
import 'productos_data.dart';


class PantallaDetalle extends StatefulWidget {
  final Producto producto;

  const PantallaDetalle({super.key, required this.producto});

  @override
  State<PantallaDetalle> createState() => _PantallaDetalleState();
}

class _PantallaDetalleState extends State<PantallaDetalle> {
  bool incluirKit = false;

  @override
  Widget build(BuildContext context) {
    // Buscar el kit en la lista de productos
    final Producto kit = productos.firstWhere(
      (p) => p.modelo.contains('KIT HORIZONTAL'),
      orElse: () => Producto(
        modelo: '',
        categoria: '',
        precioVenta: 0,
        cuota3: 0,
        cuota6: 0,
        cuota12: 0,
      ),
    );

    // Ver si el producto actual es calefón TF
    bool esCalefonTF = widget.producto.categoria == 'Calefón' &&
        widget.producto.modelo.contains('TF');

    // Calcular precios
    double totalVenta = widget.producto.precioVenta +
        (incluirKit ? kit.precioVenta : 0);
    double totalCuota3 =
        widget.producto.cuota3 + (incluirKit ? kit.cuota3 : 0);
    double totalCuota6 =
        widget.producto.cuota6 + (incluirKit ? kit.cuota6 : 0);
    double totalCuota12 =
        widget.producto.cuota12 + (incluirKit ? kit.cuota12 : 0);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.producto.modelo),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Precio Venta: \$${totalVenta.toStringAsFixed(0)}',
                style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 16),
            Text('Cuotas:', style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 8),
            Text('3 cuotas de: \$${totalCuota3.toStringAsFixed(0)}'),
            Text('6 cuotas de: \$${totalCuota6.toStringAsFixed(0)}'),
            Text('12 cuotas de: \$${totalCuota12.toStringAsFixed(0)}'),
            const SizedBox(height: 20),
            if (esCalefonTF)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Agregar KIT HORIZONTAL',
                      style: TextStyle(fontSize: 18)),
                  Switch(
                    value: incluirKit,
                    onChanged: (value) {
                      setState(() {
                        incluirKit = value;
                      });
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
