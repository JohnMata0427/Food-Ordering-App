import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

Future registrarPedidos(List productos, String notas) async {
  final response = await http.post(
      Uri.parse('https://food-ordering-api-restful.onrender.com/api/pedido/registro'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'productos':productos,
        'notas':notas
      }));

  // ignore: avoid_print
  print(response.body);
  if (response.statusCode == 201) {
    return jsonDecode(response.body) as Map<String, dynamic>;
  } else {
    throw Exception('Error al cargar los datos');
  }
}

Future obtenerPedidos() async {
  SharedPreferences localStorage = await SharedPreferences.getInstance();
  final token = localStorage.getString('token');
  final response = await http.get(
      Uri.parse('https://food-ordering-api-restful.onrender.com/api/pedidos'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token'
      });
  if (response.statusCode == 200) {
    return jsonDecode(response.body);
  } else {
    throw Exception('Error al cargar los datos');
  }
}

