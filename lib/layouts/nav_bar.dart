import 'package:flutter/material.dart';
import 'package:food_ordering_app/screens/contacto.dart';
import 'package:food_ordering_app/screens/inicio.dart';
import 'package:food_ordering_app/screens/ordenar.dart';
import 'package:food_ordering_app/screens/perfil.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int pantallaActual = 0;
  List pantallas = [
    const Inicio(),
    const Ordenar(),
    const Perfil(),
    const Contacto()
  ];
  List titulos = ["Inicio", "Ordenar", "Perfil", "Contacto"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: TextButton(onPressed: () {
          Navigator.pushNamed(context, '/perfil/actualizar');
        }, child: const Row(children: [Icon(Icons.person), Text('Actualizar Perfil')])),
      ),
      appBar: AppBar(
        title: Text(titulos[pantallaActual]),
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        height: 80,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
              child: Column(
                children: [
                  Icon(Icons.home,
                      color: pantallaActual == 0 ? Colors.amber : Colors.white),
                  Text("Inicio",
                      style: TextStyle(
                          color: pantallaActual == 0
                              ? Colors.amber
                              : Colors.white))
                ],
              ),
              onTap: () {
                setState(() {
                  pantallaActual = 0;
                });
              }),
          GestureDetector(
              child: Column(
                children: [
                  Icon(Icons.shopping_cart,
                      color: pantallaActual == 1 ? Colors.amber : Colors.white),
                  Text("Ordenar",
                      style: TextStyle(
                          color: pantallaActual == 1
                              ? Colors.amber
                              : Colors.white))
                ],
              ),
              onTap: () {
                setState(() {
                  pantallaActual = 1;
                });
              }),
          GestureDetector(
              child: Column(
                children: [
                  Icon(Icons.person,
                      color: pantallaActual == 2 ? Colors.amber : Colors.white),
                  Text("Perfil",
                      style: TextStyle(
                          color: pantallaActual == 2
                              ? Colors.amber
                              : Colors.white))
                ],
              ),
              onTap: () {
                setState(() {
                  pantallaActual = 2;
                });
              }),
          GestureDetector(
              child: Column(
                children: [
                  Icon(Icons.contact_mail,
                      color: pantallaActual == 3 ? Colors.amber : Colors.white),
                  Text("Contacto",
                      style: TextStyle(
                          color: pantallaActual == 3
                              ? Colors.amber
                              : Colors.white))
                ],
              ),
              onTap: () {
                setState(() {
                  pantallaActual = 3;
                });
              })
        ]),
      ),
      body: pantallas[pantallaActual],
    );
  }
}
