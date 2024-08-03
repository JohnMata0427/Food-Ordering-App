import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_ordering_app/layouts/auth_layout.dart';
import 'package:food_ordering_app/services/chef_auth.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formRegistroKey = GlobalKey<FormState>();
  bool isPasswordVisible = true;
  // Variables para los datos del chef

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  Future<Object>? _respuesta;

  @override
  Widget build(BuildContext context) {
    return AutenticacionLayout(
      child: Form(
        key: _formRegistroKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/chefs.png"),
              height: 120,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "INICIAR SESIÓN",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
                controller: _emailController,
                validator: (value) => value!.isEmpty ? "Campo requerido" : null,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email, color: Colors.black),
                  labelText: "Correo",
                  labelStyle: const TextStyle(color: Colors.black),
                  hintText: "Ingrese su correo",
                  hintStyle: const TextStyle(color: Colors.black38),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(248, 207, 27, 1)),
                      borderRadius: BorderRadius.circular(10)),
                )),
            const SizedBox(height: 10),
            TextFormField(
                controller: _passwordController,
                obscureText: isPasswordVisible,
                obscuringCharacter: "*",
                validator: (value) => value!.isEmpty ? "Campo requerido" : null,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock, color: Colors.black),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isPasswordVisible = !isPasswordVisible;
                        });
                      },
                      icon: Icon(
                          isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black)),
                  labelText: "Contraseña",
                  labelStyle: const TextStyle(color: Colors.black),
                  hintText: "Ingrese su contraseña",
                  hintStyle: const TextStyle(color: Colors.black38),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color.fromRGBO(248, 207, 27, 1)),
                      borderRadius: BorderRadius.circular(10)),
                )),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    if (_formRegistroKey.currentState!.validate()) {                      
                      setState(() {
                        _respuesta = loginChef(
                            _emailController.text, _passwordController.text);                        
                      });          
                      Navigator.pushNamed(context, "/inicio");
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Stack(
                          children: [
                            Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                height: 90,
                                decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 228, 106),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: const Row(
                                  children: [
                                    SizedBox(width: 48),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Inicio de sesión",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black)),
                                          Text(
                                            "Bienvenido",
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.black),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                            const Positioned(
                                bottom: 0,
                                top: 0,
                                left: 8,
                                child: Icon(Icons.lunch_dining,
                                    color: Color.fromARGB(255, 219, 180, 7),
                                    size: 50))
                          ],
                        ),
                        behavior: SnackBarBehavior.floating,
                        backgroundColor: Colors.transparent,
                        duration: const Duration(seconds: 2),
                        elevation: 0,
                      ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 70),
                      backgroundColor: const Color.fromARGB(255, 248, 207, 27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ingresar",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black)),
                      SizedBox(width: 5),
                      Icon(Icons.send, color: Colors.black)
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿No tienes una cuenta?"),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/registro");
                  },
                  child: const Text(" Registrate",
                      style: TextStyle(color: Color.fromRGBO(199, 53, 9, 1))),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿Olvidaste tu contraseña?"),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/recuperar_contraseña");
                  },
                  child: const Text(" Recuperala",
                      style: TextStyle(color: Color.fromRGBO(199, 53, 9, 1))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
