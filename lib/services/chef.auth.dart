import 'package:http/http.dart' as http;

// final url = Uri.parse('https://food-ordering-api-restful.onrender.com/api/register');

Future<http.Response> registerChef(String nombre, String apellido, String telefono, String email, String password) async {

  Map<String, dynamic> data = {
    'nombre': nombre,
    'apellido': apellido,
    'telefono': telefono,
    'email': email,
    'password': password,
  };

  final response = await http.post(Uri.parse('https://food-ordering-api-restful.onrender.com/api/register'), body: data);

  return response;
}
