import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("Inicio"),
        backgroundColor: Colors.amber,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13),
            child: CircleAvatar(
              backgroundColor: Colors.amber[200],
              radius: 20,
              child: const Icon(Icons.search),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/Inicio.png', width: double.infinity),
          const SizedBox(height: 10),
          const Text("MENÚ"),
          const SizedBox(height: 10),
          Row(
            children: [
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Text("Comidas",
                        style: TextStyle(color: Colors.white)),
                    Image.asset(
                      'assets/Comidas.png',
                      width: 120,
                    )
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Text("Bebidas",
                        style: TextStyle(color: Colors.white)),
                    Image.asset(
                      'assets/Bebidas.png',
                      width: 120,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    const Text("Postres",
                        style: TextStyle(color: Colors.white)),
                    Image.asset(
                      'assets/Postres.png',
                      width: 120,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
