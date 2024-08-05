import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

class Carrito extends StatefulWidget {
  const Carrito({super.key});

  @override
  State<Carrito> createState() => _CarritoState();
}

class _CarritoState extends State<Carrito> {
  //Variables
  int _cantidad = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrito"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("PEDIDOS"),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Image(
              image: NetworkImage(
                  "https://res.cloudinary.com/ddcs9xxid/image/upload/v1722813531/urgjls9a2l7ab7ixz2a4.jpg"),
              width: 130,
              height: 180,
            ),
            const SizedBox(width: 10),
            const Column(children: [Text("Frutaris"), Text("\$1000")]),
            const SizedBox(width: 12),
            Column(
              children: [
                Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _cantidad++;
                        });
                      },
                      child: const Text(
                        "+",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                ),
                Text('$_cantidad'),
                Container(
                  width: 40,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _cantidad--;
                          if (_cantidad < 0) {
                            _cantidad = 0;
                          }
                        });
                      },
                      child: const Text(
                        "-",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      )),
                ),
              ],
            )
          ])
        ],
      ),
    );
  }
}
