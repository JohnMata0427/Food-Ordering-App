import 'package:flutter/material.dart';
import 'package:food_ordering_app/layouts/nav_bar.dart';
import 'package:food_ordering_app/screens/auth/login_screen.dart';
import 'package:food_ordering_app/screens/auth/nuevo_password.dart';
import 'package:food_ordering_app/screens/auth/recuperar_password.dart';
import 'package:food_ordering_app/screens/auth/registro_screen.dart';
import 'package:food_ordering_app/screens/auth/verificar_screen.dart';

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
      initialRoute: "/inicio",
      routes: {
        "/registro": (context) => const Registro(),
        "/login": (context) => const LoginScreen(),
        "/recuperar_contraseña": (context) => const RecuperarPassword(),
        "/verificarcodigo": (context) => const VerificarScreen(),
        "/nuevo_password": (context) => const NuevoPassword(),
        "/inicio": (context) => const NavBar(),
      },
    );
  }
}
