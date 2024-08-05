import 'package:flutter/material.dart';

class Carrito extends StatefulWidget {
  const Carrito({super.key});

  @override
  State<Carrito> createState() => _CarritoState();
}

class _CarritoState extends State<Carrito> {
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
            Column(
              children: [
                GestureDetector(
                  onTap: () {},
                    child: const Text(
                      "+",
                      style: TextStyle(color: Colors.white),
                    )),
                const Text("1"),
                ElevatedButton(onPressed: () {}, child: const Text("-"))],
            )
          ])
        ],
      ),
    );
  }
}
