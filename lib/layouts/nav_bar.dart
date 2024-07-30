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

  int pantalla_actual = 0;
  List pantallas = [Inicio() , Ordenar() , Perfil() , Contacto()];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        height: 80,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          GestureDetector(
            child: Column(
              children: [Icon(Icons.home , color: pantalla_actual == 0 ? Colors.amber : Colors.white), Text("Inicio" , style: TextStyle(color: pantalla_actual == 0 ? Colors.amber : Colors.white) )],
            ),
            onTap: () { setState(() {
              pantalla_actual = 0;
            }); }
          ),
          GestureDetector(
            child: Column(
              children: [Icon(Icons.shopping_cart , color: pantalla_actual == 1 ? Colors.amber : Colors.white), Text("Ordenar" , style: TextStyle(color: pantalla_actual == 1 ? Colors.amber : Colors.white))],
            ),
            onTap: () {setState(() {
              pantalla_actual = 1;
            });}
          ),
          GestureDetector(
            child: Column(
              children: [Icon(Icons.person , color: pantalla_actual == 2 ? Colors.amber : Colors.white), Text("Perfil" , style: TextStyle(color: pantalla_actual == 2 ? Colors.amber : Colors.white))],
            ),
            onTap: () { setState(() {
              pantalla_actual = 2;
            });}
          ),
          GestureDetector(
            child: Column(
              children: [Icon(Icons.contact_mail , color: pantalla_actual == 3 ? Colors.amber : Colors.white), Text("Contacto" , style: TextStyle(color: pantalla_actual == 3 ? Colors.amber : Colors.white))],
            ),
            onTap: () { setState(() {
              pantalla_actual = 3;
            });}
          )
        ]),
      ),
      body: pantallas[pantalla_actual],
    );
  }
}
