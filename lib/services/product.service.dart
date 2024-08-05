import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Object> registrarProductos(String nombre, String descripcion,
    String imagen, double precio, String categoria, bool estado) async {
  final response = await http.post(
      Uri.parse('https://food-ordering-api-restful.onrender.com/api/productos'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'nombre': nombre,
        'descripcion': descripcion,
        'imagen': imagen,
        'precio': precio,
        'categoria': categoria,
        'estado': estado,
      }));

  // ignore: avoid_print
  print(response.body);
  if (response.statusCode == 201) {
    return jsonDecode(response.body) as Map<String, dynamic>;
  } else {
    throw Exception('Error al cargar los datos');
  }
}

Future obtenerProductos() async {
  final response = await http.get(
      Uri.parse('https://food-ordering-api-restful.onrender.com/api/productos'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Error al cargar los datos');
  }
}

Future obtenerCategorias(String categoria) async {
  final response = await http.get(
      Uri.parse(
          'https://food-ordering-api-restful.onrender.com/api/productos/$categoria'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Error al cargar los datos');
  }
}
