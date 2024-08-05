import 'package:flutter/material.dart';

class ProductoComponent extends StatefulWidget {
  final String nombre, descripcion, categoria, imagenUrl;
  final double precio;

  const ProductoComponent({
    super.key,
    required this.nombre,
    required this.descripcion,
    required this.categoria,
    required this.precio,
    required this.imagenUrl,
  });

  @override
  State<ProductoComponent> createState() => _ProductoComponentState();
}

class _ProductoComponentState extends State<ProductoComponent> {
  final Map<String, Color> colors = {
    'Almuerzos': Colors.amber,
    'Bebidas': Colors.red,
    'Snacks': Colors.green
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      constraints: const BoxConstraints(
        minHeight: 250,
      ),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 90),
                offset: Offset(5, 5),
                blurRadius: 15)
          ],
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(children: [
            Image(
              image: NetworkImage(widget.imagenUrl),
              height: 80,
              fit: BoxFit.cover,
            ),
            Text(widget.nombre,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            Text(widget.descripcion, style: const TextStyle(fontSize: 12)),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  'Categoria: ',
                  style: TextStyle(fontSize: 10),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                  decoration: BoxDecoration(
                      color: colors[widget.categoria],
                      borderRadius: BorderRadius.circular(7)),
                  child: Text(widget.categoria,
                      style: const TextStyle(fontSize: 10)),
                )
              ],
            ),
          ]),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('\$${widget.precio}',
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: const Text(
                      'Añadir',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                )
              ])
        ],
      ),
    );
  }
}
