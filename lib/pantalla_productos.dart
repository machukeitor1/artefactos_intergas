import 'package:flutter/material.dart';
import 'productos_data.dart';
import 'pantalla_detalle.dart';

class PantallaProductos extends StatefulWidget {
  final String categoria;

  const PantallaProductos({super.key, required this.categoria});

  @override
  State<PantallaProductos> createState() => _PantallaProductosState();
}

class _PantallaProductosState extends State<PantallaProductos> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final productosFiltrados = productos
        .where((producto) =>
            producto.categoria == widget.categoria &&
            producto.modelo.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Productos - ${widget.categoria}'),
      ),
      body: Column(
        children: [
          if (widget.categoria == 'Calefón')
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Buscar calefón...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: productosFiltrados.length,
              itemBuilder: (context, index) {
                final producto = productosFiltrados[index];
                return ListTile(
                  title: Text(producto.modelo),
                  subtitle: Text(
                      'Precio: \$${producto.precioVenta.toStringAsFixed(0)}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            PantallaDetalle(producto: producto),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
