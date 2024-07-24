import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/registro_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Registro() , debugShowCheckedModeBanner: false,);
  }
}
