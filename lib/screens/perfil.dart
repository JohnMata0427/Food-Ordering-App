import 'package:flutter/material.dart';

class Perfil extends StatefulWidget {
  const Perfil({super.key});

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  List<String> especialidades = [
    'Dumplings de cerdo al vapor',
    'Baozi relleno de cerdo BBQ',
    'Siu Mai (dumplings abiertos de cerdo y camarón)'
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
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
            const Text(
              'Samuel Cuti Calvo',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
                'Chef Samuel Cuti Calvo, nacido en Chengdu, es un maestro de la cocina china con más de 20 años de experiencia. Con formación en la Academia Culinaria de Beijing, ha trabajado en restaurantes prestigiosos en Beijing, Shanghai, Guangzhou y Hong Kong. Conocido por su dominio del Pato laqueado de Beijing y su habilidad en dim sum cantoneses, Samuel Cuti Calvo combina técnicas tradicionales con innovaciones modernas, creando platos de fusión únicos. Actualmente, es el chef ejecutivo del aclamado restaurante "Dragón Imperial" en Shanghai, donde continúa deleitando a sus comensales con su pasión y creatividad culinaria.'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Especialidades',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 10,
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: especialidades.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(especialidades[index]),
                    leading: const Icon(Icons.restaurant),
                  );
                }),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/perfil/actualizar');
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
                    Text("Actualizar Perfil",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Colors.black)),
                    SizedBox(width: 5),
                    Icon(Icons.edit, color: Colors.black)
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
