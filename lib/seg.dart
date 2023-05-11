import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  final List<String> caracteristicas;

  SegundaPantalla({required this.caracteristicas});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Características Seleccionadas:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            for (String caracteristica in caracteristicas)
              Text(
                caracteristica,
                style: TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
