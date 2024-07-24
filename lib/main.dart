import 'package:flutter/material.dart';
import 'package:food_ordering_app/layout/autenticacion.dart';
import 'package:food_ordering_app/pages/registro.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Registro() , debugShowCheckedModeBanner: false,);
  }
}
