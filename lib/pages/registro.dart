import 'package:flutter/material.dart';
import 'package:food_ordering_app/layout/autenticacion.dart';
import 'package:food_ordering_app/services/chef.auth.dart';
import 'package:http/http.dart' as http;

class Registro extends StatefulWidget {
  const Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  final _formRegistroKey = GlobalKey<FormState>();
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;

  // Variables para los datos del chef
  String nombre = '';
  String apellido = '';
  String telefono = '';
  String email = '';
  String password = '';
  String confirmPassword = '';

  Future<http.Response>? response;

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
            padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: SingleChildScrollView(
              child: Form(
                key: _formRegistroKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "REGISTRO CHEF",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      onChanged: (value) {
                        setState(() {
                          nombre = value;
                        });
                      },
                        validator: (value) =>
                            value!.isEmpty ? "Campo requerido" : null,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.person, color: Colors.black),
                          labelText: "Nombre",
                          labelStyle: const TextStyle(color: Colors.black),
                          hintText: "Ingrese su nombre",
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
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        onChanged: (value) {
                          setState(() {
                            apellido = value;
                          });
                        },
                        validator: (value) =>
                            value!.isEmpty ? "Campo requerido" : null,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.person, color: Colors.black),
                          labelText: "Apellido",
                          labelStyle: const TextStyle(color: Colors.black),
                          hintText: "Ingrese su apellido",
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
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        onChanged: (value) {
                          setState(() {
                            telefono = value;
                          });
                        },
                        validator: (value) =>
                            value!.isEmpty ? "Campo requerido" : null,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.phone, color: Colors.black),
                          labelText: "Telefono",
                          labelStyle: const TextStyle(color: Colors.black),
                          hintText: "Ingrese su número de teléfono",
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
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        onChanged: (value) {
                          setState(() {
                            email = value;
                          });
                        },
                        validator: (value) =>
                            value!.isEmpty ? "Campo requerido" : null,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.email, color: Colors.black),
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
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        onChanged: (value) {
                          setState(() {
                            password = value;
                          });
                        },
                        obscureText: isPasswordVisible,
                        obscuringCharacter: "*",
                        validator: (value) =>
                            value!.isEmpty ? "Campo requerido" : null,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.lock, color: Colors.black),
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
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        onChanged: (value) {
                          setState(() {
                            confirmPassword = value;
                          });
                        },
                        obscureText: isConfirmPasswordVisible,
                        obscuringCharacter: "*",
                        validator: (value) =>
                            value!.isEmpty ? "Campo requerido" : null,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.lock, color: Colors.black),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isConfirmPasswordVisible =
                                      !isConfirmPasswordVisible;
                                });
                              },
                              icon: Icon(
                                  isConfirmPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.black)),
                          labelStyle: const TextStyle(color: Colors.black),
                          labelText: "Confirmar contraseña",
                          hintText: "Ingrese nuevamente su contraseña",
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
                            if (_formRegistroKey.currentState!.validate() && password == confirmPassword) {

                              await registerChef(nombre, apellido, telefono, email, password);

                              // ignore: avoid_print
                              print(response);

                              // ignore: use_build_context_synchronously
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Stack(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 20),
                                        height: 90,
                                        decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 255, 228, 106),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: const Row(
                                          children: [
                                            SizedBox(width: 48),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("Registrado",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black)),
                                                  Text(
                                                    "Los datos han sido guardados exitosamente",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                    maxLines: 2,
                                                    overflow:
                                                        TextOverflow.ellipsis,
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
                                            color: Color.fromARGB(
                                                255, 219, 180, 7),
                                            size: 50))
                                  ],
                                ),
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: Colors.transparent,
                                duration: const Duration(seconds: 2),
                                elevation: 0,
                              ));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text("Datos incorrectos")));
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 70),
                              backgroundColor:
                                  const Color.fromARGB(255, 248, 207, 27),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Registrar",
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
                        const Text("¿Tienes una cuenta?"),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Text(" Inicia sesión",
                              style: TextStyle(
                                  color: Color.fromRGBO(199, 53, 9, 1))),
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
                            Navigator.pop(context);
                          },
                          child: const Text(" Recuperala",
                              style: TextStyle(
                                  color: Color.fromRGBO(199, 53, 9, 1))),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
