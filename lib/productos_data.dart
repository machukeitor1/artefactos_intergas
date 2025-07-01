class Producto {
  final String modelo;
  final String categoria;
  final double precioVenta;
  final double cuota3;
  final double cuota6;
  final double cuota12;

  Producto({
    required this.modelo,
    required this.categoria,
    required this.precioVenta,
    required this.cuota3,
    required this.cuota6,
    required this.cuota12,
  });
}
final List<Producto> productos = [
  // Calefones (18)
  Producto(modelo: 'CALEFONT NECKAR 10', categoria: 'Calefón', precioVenta: 147920, cuota3: 49307, cuota6: 24653, cuota12: 0),
  Producto(modelo: 'CALEFONT NECKAR 13', categoria: 'Calefón', precioVenta: 168860, cuota3: 56287, cuota6: 28143, cuota12: 0),
  Producto(modelo: 'CALEFONT JUNKERS HYDROBASE 1500 7L GN', categoria: 'Calefón', precioVenta: 129130, cuota3: 43043, cuota6: 21522, cuota12: 0),
  Producto(modelo: 'CALEFONT JUNKERS HYDROBATTERY - SMART W10 KB 23 S4395', categoria: 'Calefón', precioVenta: 243470, cuota3: 81157, cuota6: 40578, cuota12: 0),
  Producto(modelo: 'CALEFONT JUNKERS 10 TF', categoria: 'Calefón', precioVenta: 333730, cuota3: 111243, cuota6: 55622, cuota12: 0),
  Producto(modelo: 'CALEFONT JUNKERS TIRO FORZADO WD10 KM GAS NATURAL', categoria: 'Calefón', precioVenta: 223840, cuota3: 74613, cuota6: 37307, cuota12: 0),
  Producto(modelo: 'CALEFONT JUNKERS HYDROBATTERY - SMART W13 KB 23 S4395', categoria: 'Calefón', precioVenta: 280130, cuota3: 93377, cuota6: 46688, cuota12: 0),
  Producto(modelo: 'CALEFONT RHEEM 10 TF', categoria: 'Calefón', precioVenta: 279760, cuota3: 93253, cuota6: 46627, cuota12: 0),
  Producto(modelo: 'CALEFONT RHEEM 12 TF', categoria: 'Calefón', precioVenta: 285540, cuota3: 95180, cuota6: 47590, cuota12: 0),
  Producto(modelo: 'CALEFONT RHEEM 14 TF', categoria: 'Calefón', precioVenta: 318550, cuota3: 106183, cuota6: 53092, cuota12: 0),
  Producto(modelo: 'CALEFONT RHEEM 14 TN', categoria: 'Calefón', precioVenta: 282580, cuota3: 94193, cuota6: 47097, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 08 TN', categoria: 'Calefón', precioVenta: 105420, cuota3: 35140, cuota6: 17570, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 10 TN', categoria: 'Calefón', precioVenta: 151530, cuota3: 50510, cuota6: 25255, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 13 TN', categoria: 'Calefón', precioVenta: 167850, cuota3: 55950, cuota6: 27975, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 10 TF', categoria: 'Calefón', precioVenta: 170170, cuota3: 56723, cuota6: 28362, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 10 TF CE', categoria: 'Calefón', precioVenta: 269260, cuota3: 89753, cuota6: 44877, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 13 TF CAMARA ABIERTO AUTOMATICO', categoria: 'Calefón', precioVenta: 202900, cuota3: 67633, cuota6: 33817, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 11 TN', categoria: 'Calefón', precioVenta: 159040, cuota3: 53013, cuota6: 26507, cuota12: 0),

  // Accesorio (1)
  Producto(modelo: 'KIT HORIZONTAL Ø60 - 980MM JUNKERS', categoria: 'Calefón', precioVenta: 25510, cuota3: 8503, cuota6: 4252, cuota12: 0),

  // Calefactores (3)
  Producto(modelo: 'GAZELLE EVO 3000', categoria: 'Calefactor', precioVenta: 229000, cuota3: 76333, cuota6: 38167, cuota12: 19083),
  Producto(modelo: 'GAZELLE EVO 5000', categoria: 'Calefactor', precioVenta: 259000, cuota3: 86333, cuota6: 43167, cuota12: 21583),
  Producto(modelo: 'GAZELLE EVO 7000', categoria: 'Calefactor', precioVenta: 289000, cuota3: 96333, cuota6: 48167, cuota12: 24083),

  // Calderas (3)
  Producto(modelo: 'CALDERA ANTEA KC 24-28', categoria: 'Caldera', precioVenta: 820010, cuota3: 273337, cuota6: 136668, cuota12: 68334),
  Producto(modelo: 'CALDERA ANTEA MONOTERMICA CTFS 24', categoria: 'Caldera', precioVenta: 579630, cuota3: 193210, cuota6: 96605, cuota12: 48303),
  Producto(modelo: 'CALDERA ITACA CH KR 45', categoria: 'Caldera', precioVenta: 2232040, cuota3: 744013, cuota6: 372007, cuota12: 186003),

  // Encimeras (4)
Producto(modelo: 'EW-60 4G AI AL CI Black Acero Inoxidable de 4 quemadores', categoria: 'Encimera', precioVenta: 270990, cuota3: 90330, cuota6: 45165, cuota12: 0),
Producto(modelo: 'EX-60.1 4G AI DR CI Acero Inoxidable de 4 quemadores', categoria: 'Encimera', precioVenta: 188990, cuota3: 62997, cuota6: 31498, cuota12: 0),
Producto(modelo: 'GZC 64300 XBB Cristal de 4 quemadores', categoria: 'Encimera', precioVenta: 253990, cuota3: 84663, cuota6: 42332, cuota12: 0),
Producto(modelo: 'GZC 64320 XBB Cristal de 4 quemadores', categoria: 'Encimera', precioVenta: 270990, cuota3: 90330, cuota6: 45165, cuota12: 0),

];
