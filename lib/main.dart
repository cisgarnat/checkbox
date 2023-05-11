import 'package:flutter/material.dart';
import 'package:prueba/prim.dart';
import 'package:prueba/seg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi aplicación',
      initialRoute: '/',
      routes: {
        '/': (context) => PrimeraPantalla(),
        '/segunda': (context) => SegundaPantalla(
              caracteristicas: [],
            ),
      },
    );
  }
}
