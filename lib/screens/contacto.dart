import 'package:flutter/material.dart';
import 'package:food_ordering_app/services/chef_auth.dart';

class Contacto extends StatefulWidget {
  const Contacto({super.key});

  @override
  State<Contacto> createState() => _ContactoState();
}

class _ContactoState extends State<Contacto> {
  final _formContactoKey = GlobalKey<FormState>();

  //Variables
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _asuntoController = TextEditingController();
  final TextEditingController _mensajeController = TextEditingController();
  
  Future<Object>? _respuesta;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formContactoKey,
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
                "CONTACTANOS",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  controller: _nombreController,
                  validator: (value) => value!.isEmpty ? "Campo requerido" : null,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person, color: Colors.black),
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
              const SizedBox(height: 10),
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
                  controller: _asuntoController,
                  validator: (value) => value!.isEmpty ? "Campo requerido" : null,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.label, color: Colors.black),
                    labelText: "Asunto",
                    labelStyle: const TextStyle(color: Colors.black),
                    hintText: "Ingrese el asunto",
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
                  maxLines: 7,
                  controller: _mensajeController,
                  textAlignVertical: TextAlignVertical.top,
                  validator: (value) => value!.isEmpty ? "Campo requerido" : null,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.comment, color: Colors.black),
                    labelText: "Mensaje",
                    labelStyle: const TextStyle(color: Colors.black),
                    hintText: "Ingrese el mensaje",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      if (_formContactoKey.currentState!.validate()) {
                        setState(() {
                          _respuesta = contacto(
                              _nombreController.text,
                              _emailController.text,
                              _asuntoController.text,
                              _mensajeController.text);
                        });
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
                                            Text("Enviado",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black)),
                                            Text(
                                              "Mensaje enviado",
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
                        Text("Enviar",
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
            ],
          ),
        ),
      ),
    );
  }
}
