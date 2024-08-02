import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/FondoPerfil.png',
                  height: 350,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/Samuel_Pig.png',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
