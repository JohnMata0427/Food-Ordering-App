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
