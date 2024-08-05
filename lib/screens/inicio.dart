import 'package:flutter/material.dart';
import 'package:food_ordering_app/layouts/nav_bar.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final List<String> categorias = ["Comidas", "Bebidas", "Postres"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Image.asset('assets/Inicio.png', width: double.infinity),
        const SizedBox(height: 10),
        const Text("MENÚ"),
        const SizedBox(height: 10),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            itemCount: 3,
            itemBuilder: (context, index) {
              return ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NavBar(pantalla: 1)));
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
      ]),
    );
  }
}
