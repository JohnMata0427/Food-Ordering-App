import 'package:flutter/material.dart';
import 'package:food_ordering_app/layouts/auth_layout.dart';
import 'package:food_ordering_app/services/chef_auth.dart';

class VerificarScreen extends StatefulWidget {
  const VerificarScreen({super.key});

  @override
  State<VerificarScreen> createState() => _VerificarScreenState();
}

class _VerificarScreenState extends State<VerificarScreen> {
  final _formRegistroKey = GlobalKey<FormState>();
  final TextEditingController _verificationCode = TextEditingController();

  Future <Object>? _respuesta;

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
                      "VERIFICAR CÓDIGO",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                        controller: _verificationCode,
                        validator: (value) =>
                            value!.isEmpty ? "Campo requerido" : null,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.email, color: Colors.black),
                          labelText: "Código",
                          labelStyle: const TextStyle(color: Colors.black),
                          hintText: "XX-XX",
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () async {
                            
                            if (_formRegistroKey.currentState!.validate()
                            ){
                              setState(() {
                                _respuesta = codigoVerificacion(_verificationCode.text);
                              });
                              Navigator.pushNamed(context, '/nuevo_password');

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
                                                  Text("Verificación exitosa",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: Colors.black)),
                                                  Text(
                                                    "Ya puedes cambiar tu contraseña",
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
                    const SizedBox(
                      height: 10,
                    ),
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