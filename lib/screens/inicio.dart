import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final List<String> categorias = ["Comidas", "Bebidas", "Postres"];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset('assets/Inicio.png', width: double.infinity),
      const SizedBox(height: 10),
      const Text("MENÚ"),
      const SizedBox(height: 10),
      SizedBox(
        height: 425,
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (context, index) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/categorias/${categorias[index]}');
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Text(categorias[index],
                          style: const TextStyle(color: Colors.white)),
                      ClipRRect(
                        child: Image.asset(
                          'assets/${categorias[index]}.png',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    ]);
  }
}
