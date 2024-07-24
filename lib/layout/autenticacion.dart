import 'package:flutter/material.dart';

class AutenticacionLayout extends StatelessWidget {
  const AutenticacionLayout({super.key , required this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body:  Stack(children: [
          const Image(
            image: AssetImage("assets/fondo.png"),
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          )
          ,
          SafeArea(child: child!)
        ]));
  }
}
