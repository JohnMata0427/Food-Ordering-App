import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/login_screen.dart';
import 'package:food_ordering_app/screens/recuperar_password.dart';
import 'package:food_ordering_app/screens/registro_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Comida ESFOT",
      initialRoute: "/login",
      routes: {
        "/registro": (context) => const Registro(),
        "/login": (context) => const LoginScreen(),
        "/recuperar_contraseña": (context) => const RecuperarPassword()
      },
    );
  }
}
