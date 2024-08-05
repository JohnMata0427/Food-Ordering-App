import 'package:flutter/material.dart';

class AutenticacionLayout extends StatelessWidget {
  const AutenticacionLayout({super.key, required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          const Image(
            image: AssetImage("assets/fondo.jpg"),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
              child: Column(children: [
            const Expanded(
                child: SizedBox(
              height: 10,
            )),
            Expanded(
                flex: 10,
                child: Container(
                    padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: SingleChildScrollView(child: child!)))
          ]))
        ]));
  }
}
