class Producto {
  final String modelo;
  final String categoria;
  final double precioVenta;
  final double cuota3;
  final double cuota6;
  final double cuota12;
  final String? imagenUrl;
  final String? arAsset;

  Producto({
    required this.modelo,
    required this.categoria,
    required this.precioVenta,
    required this.cuota3,
    required this.cuota6,
    required this.cuota12,
    this.imagenUrl,
    this.arAsset,
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
  Producto(modelo: 'CALEFONT SPLENDID 08 TN', categoria: 'Calefón', precioVenta: 105420, cuota3: 35140, cuota6: 17570, cuota12: 0, imagenUrl: 'https://www.splendid.cl/ccstore/v1/images/?source=/file/v1773535457835196352/products/f7968f78-1323-4457-896b-7696dcb58ef2_1.jpg'),
  Producto(modelo: 'CALEFONT SPLENDID 10 TN', categoria: 'Calefón', precioVenta: 151530, cuota3: 50510, cuota6: 25255, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 13 TN', categoria: 'Calefón', precioVenta: 167850, cuota3: 55950, cuota6: 27975, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 10 TF', categoria: 'Calefón', precioVenta: 170170, cuota3: 56723, cuota6: 28362, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 10 TF CE', categoria: 'Calefón', precioVenta: 269260, cuota3: 89753, cuota6: 44877, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 13 TF CAMARA ABIERTO AUTOMATICO', categoria: 'Calefón', precioVenta: 202900, cuota3: 67633, cuota6: 33817, cuota12: 0),
  Producto(modelo: 'CALEFONT SPLENDID 11 TN', categoria: 'Calefón', precioVenta: 159040, cuota3: 53013, cuota6: 26507, cuota12: 0),

  // Accesorio (1)
  Producto(modelo: 'KIT HORIZONTAL Ø60 - 980MM JUNKERS', categoria: 'Calefón', precioVenta: 25510, cuota3: 8503, cuota6: 4252, cuota12: 0),

  // Calefactores (3)
  Producto(modelo: 'GAZELLE EVO 3000', categoria: 'Calefactor', precioVenta: 229000, cuota3: 76333, cuota6: 38167, cuota12: 19083, imagenUrl: 'https://admincontent.bimobject.com/public/productimages/3510b2f0-6f6c-450b-9b40-29c317b2c06b/efb97c88-8ae0-448f-97c5-1923a360f817/545701?width=675&height=675&', arAsset: 'assets/gazelle_evo.png'),
  Producto(modelo: 'GAZELLE EVO 5000', categoria: 'Calefactor', precioVenta: 259000, cuota3: 86333, cuota6: 43167, cuota12: 21583, imagenUrl: 'https://admincontent.bimobject.com/public/productimages/3510b2f0-6f6c-450b-9b40-29c317b2c06b/efb97c88-8ae0-448f-97c5-1923a360f817/545701?width=675&height=675&', arAsset: 'assets/gazelle_evo.png'),
  Producto(modelo: 'GAZELLE EVO 7000', categoria: 'Calefactor', precioVenta: 289000, cuota3: 96333, cuota6: 48167, cuota12: 24083, imagenUrl: 'https://admincontent.bimobject.com/public/productimages/3510b2f0-6f6c-450b-9b40-29c317b2c06b/efb97c88-8ae0-448f-97c5-1923a360f817/545701?width=675&height=675&', arAsset: 'assets/gazelle_evo.png'),

  // Calderas (3)
  Producto(modelo: 'CALDERA ANTEA KC 24-28', categoria: 'Caldera', precioVenta: 820010, cuota3: 273337, cuota6: 136668, cuota12: 68334, imagenUrl: 'https://www.fondital.com/media/immagini/1683_z_fondital_antea-COND.png'),
  Producto(modelo: 'CALDERA ANTEA MONOTERMICA CTFS 24', categoria: 'Caldera', precioVenta: 579630, cuota3: 193210, cuota6: 96605, cuota12: 48303, imagenUrl: 'https://www.fondital.com/media/immagini/1649_z_fondital_antea-mono-min_1.png'),
  Producto(modelo: 'CALDERA ITACA CH KR 45', categoria: 'Caldera', precioVenta: 2232040, cuota3: 744013, cuota6: 372007, cuota12: 186003, imagenUrl: 'https://www.fondital.com/media/immagini/2187_z_fondital_itaca_ch_kr_45_60_85_z_2.png'),

  // Encimeras (4)
Producto(modelo: 'EW-60 4G AI AL CI Black Acero Inoxidable de 4 quemadores', categoria: 'Encimera', precioVenta: 270990, cuota3: 90330, cuota6: 45165, cuota12: 0, imagenUrl: 'https://teka.b-cdn.net/CMP1219/16/PR13536BI12098_40218071_EW_60_4G_AI_AL_CI_SZ1.jpg'),
Producto(modelo: 'EX-60.1 4G AI DR CI Acero Inoxidable de 4 quemadores', categoria: 'Encimera', precioVenta: 188990, cuota3: 62997, cuota6: 31498, cuota12: 0, imagenUrl: 'https://teka.b-cdn.net/CMP1219/7/PR419842BI14301_112610025_EX_60_1_4G_AI_DR_SZ1.jpg'),
Producto(modelo: 'GZC 64300 XBB Cristal de 4 quemadores', categoria: 'Encimera', precioVenta: 253990, cuota3: 84663, cuota6: 42332, cuota12: 0, imagenUrl: 'https://teka.b-cdn.net/CMP1219/8/PR112236BI19747_112570194_GZC_64300_XB_SZ1.png'),
Producto(modelo: 'GZC 64320 XBB Cristal de 4 quemadores', categoria: 'Encimera', precioVenta: 270990, cuota3: 90330, cuota6: 45165, cuota12: 0, imagenUrl: 'https://teka.b-cdn.net/CMP1219/5/PR20213BI19770_112570044_GZC_64320_SZ1.png'),
Producto(modelo: 'HLX-540 KBB0C Acero Inoxidable de 4 quemadores', categoria: 'Encimera', precioVenta: 140770, cuota3: 46924, cuota6: 23462, cuota12: 0, imagenUrl: 'https://teka.b-cdn.net/CMP1219/4/PR422609BI37400_112620022_HLX_540_KBB0C_IX_CL_SZ1.png'),

  // Cocinas (3)
  Producto(modelo: 'Midea MFO-MG20TCSSL (Silver)', categoria: 'Cocina', precioVenta: 181110, cuota3: 0, cuota6: 0, cuota12: 0, imagenUrl: 'https://cl-dam-resizer.ecomm.cencosud.com/unsafe/adaptive-fit-in/640x0/filters:quality(75)/cl/paris/228458999/variant/6876a7ebf3d53862909abe4e/images/c07fb3ea-f0d8-4f8d-91cf-7a3552e84213/228458999-0000-001.jpg'),
  Producto(modelo: 'Midea MFO-MG20TCSSLBK (Black)', categoria: 'Cocina', precioVenta: 177550, cuota3: 0, cuota6: 0, cuota12: 0, imagenUrl: 'https://www.easy.cl/_next/image?url=https%3A%2F%2Feasycl.vteximg.com.br%2Farquivos%2Fids%2F5136779%2F1487605-0000-001.jpg%3Fv%3D638895984659970000&w=1080&q=75'),
  Producto(modelo: 'Midea MFO-MG24TCSSL (Silver)', categoria: 'Cocina', precioVenta: 216740, cuota3: 0, cuota6: 0, cuota12: 0, imagenUrl: 'https://www.hites.com/dw/image/v2/BDPN_PRD/on/demandware.static/-/Sites-mastercatalog_HITES/default/dwc9fd5bd0/images/original/pim/960482001/960482001_1.jpg?sw=1000&sh=1000'),

];
