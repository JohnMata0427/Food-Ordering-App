import 'package:flutter/material.dart';
import 'package:food_ordering_app/components/producto.dart';
import 'package:food_ordering_app/services/product.service.dart';

class Ordenar extends StatefulWidget {
  const Ordenar({super.key});

  @override
  State<Ordenar> createState() => _OrdenarState();
}

class _OrdenarState extends State<Ordenar> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset('assets/Inicio.png', width: double.infinity),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const Text(
                  "ALMUERZOS",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                FutureBuilder(
                    future: obtenerCategorias('Comidas'),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                          ),
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ProductoComponent(
                                nombre: snapshot.data[index]['nombre'],
                                descripcion: snapshot.data[index]
                                    ['descripcion'],
                                categoria: 'Almuerzos',
                                precio: snapshot.data[index]['precio'],
                                imagenUrl: snapshot.data[index]['foto']['url']);
                          },
                        );
                      } else {
                        return const Text("Error al cargar los datos");
                      }
                    }),
                const SizedBox(height: 20),
                const Text(
                  "BEBIDAS",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                FutureBuilder(
                    future: obtenerCategorias('Bebidas'),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                          ),
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ProductoComponent(
                                nombre: snapshot.data[index]['nombre'],
                                descripcion: snapshot.data[index]
                                    ['descripcion'],
                                categoria: 'Bebidas',
                                precio: snapshot.data[index]['precio'],
                                imagenUrl: snapshot.data[index]['foto']['url']);
                          },
                        );
                      } else {
                        return const Text("Error al cargar los datos");
                      }
                    }),
                const SizedBox(height: 20),
                const Text(
                  "SNACKS",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                FutureBuilder(
                    future: obtenerCategorias('Snacks'),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator();
                      } else if (snapshot.connectionState ==
                          ConnectionState.done) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.65,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                          ),
                          shrinkWrap: true,
                          itemCount: snapshot.data.length,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ProductoComponent(
                                nombre: snapshot.data[index]['nombre'],
                                descripcion: snapshot.data[index]
                                    ['descripcion'],
                                categoria: 'Snacks',
                                precio: snapshot.data[index]['precio'],
                                imagenUrl: snapshot.data[index]['foto']['url']);
                          },
                        );
                      } else {
                        return const Text("Error al cargar los datos");
                      }
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
