import 'package:flutter/material.dart';
import 'package:food_ordering_app/services/pedidos.dart';

class Historial extends StatefulWidget {
  const Historial({super.key});

  @override
  State<Historial> createState() => _HistorialState();
}

class _HistorialState extends State<Historial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historial"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            FutureBuilder(
                future: obtenerPedidos(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.connectionState == ConnectionState.done) {
                    return DataTable(
                      columns: const [
                        DataColumn(label: Text("Fecha")),
                        DataColumn(label: Text("Productos")),
                        DataColumn(label: Text("Cantidad")),
                        DataColumn(label: Text("Notas")),
                        DataColumn(label: Text("Total")),
                        DataColumn(label: Text("Estado")),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text("12/05/2023")),
                          DataCell(Text("Pollo broaster")),
                          DataCell(Text("2")),
                          DataCell(Text("Domicilio")),
                          DataCell(Text("1000")),
                          DataCell(Text("Pendiente")),
                        ])
                      ],
                    );
                  } else {
                    return const Text("Error");
                  }
                })
          ],
        ),
      ),
    );
  }
}
