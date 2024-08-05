import 'package:flutter/material.dart';
import 'package:food_ordering_app/services/chef_auth.dart';

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
    return FutureBuilder(
        future: perfil(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            var profile = snapshot.data;
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
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: Image(
                              image: NetworkImage('${profile['foto']['url']}'),
                              height: 250,
                              fit: BoxFit.cover),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      '${profile['nombre'] + ' ' + profile['apellido']}',
                      style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('${profile['trayectoria']}'),
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
                        physics: const NeverScrollableScrollPhysics(),
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
                            backgroundColor:
                                const Color.fromARGB(255, 248, 207, 27),
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
          } else {
            return Text('${snapshot.error}');
          }
        });
  }
}
