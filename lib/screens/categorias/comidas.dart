import 'package:flutter/material.dart';

class Comidas extends StatefulWidget {
  const Comidas({super.key});

  @override
  State<Comidas> createState() => _ComidasState();
}

class _ComidasState extends State<Comidas> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [Image.asset('assets/Comidas.png', width: double.infinity),
        const Text("COMIDAS")],
      ),
    );
  }
}