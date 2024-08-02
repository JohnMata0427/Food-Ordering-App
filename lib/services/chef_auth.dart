import 'package:flutter/material.dart';
import 'package:food_ordering_app/models/chef_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<ChefModel> registerChef(String nombre, String apellido, String telefono,
    String email, String password) async {
  final response = await http.post(
      Uri.parse('https://food-ordering-api-restful.onrender.com/api/registro'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'nombre': nombre,
        'apellido': apellido,
        'telefono': telefono,
        'email': email,
        'password': password,
      }));

  print(response.body);

  if (response.statusCode == 201) {
    return ChefModel.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    throw Exception('Failed to create chef.');
  }
}

Future<Object> loginChef(String email, String password) async {
  final response = await http.post(
      Uri.parse('https://food-ordering-api-restful.onrender.com/api/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }));

  print(response.body);

  return jsonDecode(response.body) as Map<String, dynamic>;
}

Future<Object> recuperarPassword(String email) async {
  final response = await http.post(
      Uri.parse(
          'https://food-ordering-api-restful.onrender.com/api/chef/recuperarpassword'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
      }));
  print(response.body);
  return jsonDecode(response.body) as Map<String, dynamic>;
}

Future<Object> codigoVerificacion(String verificationCode) async {
  final response = await http.post(
      Uri.parse(
          'https://food-ordering-api-restful.onrender.com/api/verificarcodigo'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'verificationCode': verificationCode.toString(),
      }));
  print(response.body);
  return jsonDecode(response.body) as Map<String, dynamic>;
}

Future<Object> nuevoPassword(String password, String confirPassword) async {
  final response = await http.put(
      Uri.parse(
          'https://food-ordering-api-restful.onrender.com/api/chef/nuevopassword'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'password': password,
        'confirPassword': confirPassword
      }));
  print(response.body);
  return jsonDecode(response.body) as Map<String, dynamic>;
}

Future<Object> actualizarPerfil(String nombre, String apellido, String telefono,
    String email, String especialidad, String trayectoria) async {
  String id = 'Aquí va el ID';
  final response = await http.put(
      Uri.parse('https://food-ordering-api-restful.onrender.com/api/chef/$id'),
      headers: <String, String>{
        'Content-Type': 'multipart/form-data',
      },
      body: jsonEncode(<String, String>{
        'nombre': nombre,
        'apellido': apellido,
        'telefono': telefono,
        'email': email,
        'especialidad': especialidad,
        'trayectoria': trayectoria
      }));
  print(response.body);
  return jsonDecode(response.body) as Map<String, dynamic>;
}
