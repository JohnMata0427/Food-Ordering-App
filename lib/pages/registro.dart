import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_ordering_app/layout/autenticacion.dart';

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _formRegistroKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return AutenticacionLayout(
        child: Column(
      children: [
        const Expanded(
            child: SizedBox(
          height: 10,
        )),
        Expanded(
          flex: 5,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Form(
              key: _formRegistroKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "REGISTRO CHEFS",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        label: const Text("Nombre"),
                        hintText: "Ingrese su nombre",
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(20))),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
