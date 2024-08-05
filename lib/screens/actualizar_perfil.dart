import 'package:flutter/material.dart';
import 'package:food_ordering_app/services/chef_auth.dart';

class ActualizarPerfil extends StatefulWidget {
  const ActualizarPerfil({super.key});

  @override
  State<ActualizarPerfil> createState() => _ActualizarPerfilState();
}

class _ActualizarPerfilState extends State<ActualizarPerfil> {
  final _formActualizarPerfilKey = GlobalKey<FormState>();
  bool isPasswordVisible = true;
  // Variables para los datos del chef

  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _apellidoController = TextEditingController();
  final TextEditingController _telefonoController = TextEditingController();
  final TextEditingController _especialidadController = TextEditingController();
  final TextEditingController _trayectoriaController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  Future<Object>? _respuesta;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Actualizar Perfil'),
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          const Text(
            "Editar Perfil",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
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
                height: 275,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Actualizar Foto",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.white)),
                SizedBox(width: 10),
                Icon(Icons.camera, color: Colors.white)
              ],
            ),
          ),
          Form(
            key: _formActualizarPerfilKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    controller: _nombreController,
                    validator: (value) =>
                        value!.isEmpty ? "Campo requerido" : null,
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
                    controller: _apellidoController,
                    validator: (value) =>
                        value!.isEmpty ? "Campo requerido" : null,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person, color: Colors.black),
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
                const SizedBox(height: 10),
                TextFormField(
                    controller: _emailController,
                    validator: (value) =>
                        value!.isEmpty ? "Campo requerido" : null,
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
                    controller: _telefonoController,
                    validator: (value) =>
                        value!.isEmpty ? "Campo requerido" : null,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.phone, color: Colors.black),
                      labelText: "Telefono",
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: "Ingrese su telefono",
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
                    controller: _especialidadController,
                    validator: (value) =>
                        value!.isEmpty ? "Campo requerido" : null,
                    decoration: InputDecoration(
                      prefixIcon:
                          const Icon(Icons.restaurant, color: Colors.black),
                      labelText: "Especialidad",
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: "Ingrese sus especialidades",
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
                    controller: _trayectoriaController,
                    validator: (value) =>
                        value!.isEmpty ? "Campo requerido" : null,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.table_restaurant,
                          color: Colors.black),
                      labelText: "Trayectoria",
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: "Ingrese su trayectoria",
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
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        if (_formActualizarPerfilKey.currentState!.validate()) {
                          setState(() {
                            _respuesta = actualizarPerfil(
                                _nombreController.text,
                                _apellidoController.text,
                                _telefonoController.text,
                                _emailController.text,
                                _especialidadController.text,
                                _trayectoriaController.text);
                          });
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Stack(
                              children: [
                                Container(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    height: 90,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromARGB(255, 255, 228, 106),
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
                                              Text("Inicio de sesión",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                              vertical: 12, horizontal: 40),
                          backgroundColor:
                              const Color.fromARGB(255, 248, 207, 27),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Guardar cambios",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          SizedBox(width: 10),
                          Icon(Icons.save, color: Colors.black)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
