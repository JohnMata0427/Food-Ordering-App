import 'package:flutter/material.dart';
import 'package:food_ordering_app/layouts/auth_layout.dart';
import 'package:food_ordering_app/services/chef_auth.dart';

class NuevoPassword extends StatefulWidget {
  const NuevoPassword({super.key, this.verificationCode});

  final String? verificationCode;

  @override
  State<NuevoPassword> createState() => _NuevoPasswordState();
}

class _NuevoPasswordState extends State<NuevoPassword> {
  final _formRegistroKey = GlobalKey<FormState>();
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

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
              "REESTABLECER CONTRASEÑA",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 20,
            ),
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
            const SizedBox(height: 10),
            TextFormField(
                controller: _confirmPasswordController,
                obscureText: isConfirmPasswordVisible,
                obscuringCharacter: "*",
                validator: (value) => value!.isEmpty ? "Campo requerido" : null,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock, color: Colors.black),
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isConfirmPasswordVisible = !isConfirmPasswordVisible;
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
                    if (_formRegistroKey.currentState!.validate() &&
                        _passwordController.text ==
                            _confirmPasswordController.text) {
                      setState(() {
                        _respuesta = nuevoPassword(_passwordController.text,
                            _confirmPasswordController.text);
                      });
                      Navigator.pushNamed(context, "/login");

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
                                          Text("Cambio de contraseña",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black)),
                                          Text(
                                            "Cambio de contraseña exitoso",
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
                          vertical: 12, horizontal: 65),
                      backgroundColor: const Color.fromARGB(255, 248, 207, 27),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Confirmar",
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
                ElevatedButton(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 50),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Volver al Inicio",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                      SizedBox(width: 5),
                      Icon(Icons.home, color: Colors.white)
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
                    Navigator.pushNamed(context, "/login");
                  },
                  child: const Text(" Inicia sesión",
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
                const Text("¿No tienes una cuenta?"),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/registro");
                  },
                  child: const Text(" Registrate",
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
