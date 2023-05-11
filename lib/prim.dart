import 'package:flutter/material.dart';
import 'seg.dart';

class PrimeraPantalla extends StatefulWidget {
  @override
  _PrimeraPantallaState createState() => _PrimeraPantallaState();
}

class _PrimeraPantallaState extends State<PrimeraPantalla> {
  bool caracteristica1 = false;
  bool caracteristica2 = false;
  bool caracteristica3 = false;

  void enviarCaracteristicas(BuildContext context) {
    List<String> caracteristicasSeleccionadas = [];
    if (caracteristica1) {
      caracteristicasSeleccionadas.add('Característica 1');
    }
    if (caracteristica2) {
      caracteristicasSeleccionadas.add('Característica 2');
    }
    if (caracteristica3) {
      caracteristicasSeleccionadas.add('Característica 3');
    }
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) =>
            SegundaPantalla(caracteristicas: caracteristicasSeleccionadas),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Primera Pantalla'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              title: Text('Característica 1'),
              value: caracteristica1,
              onChanged: (value) {
                setState(() {
                  caracteristica1 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Característica 2'),
              value: caracteristica2,
              onChanged: (value) {
                setState(() {
                  caracteristica2 = value!;
                });
              },
            ),
            CheckboxListTile(
              title: Text('Característica 3'),
              value: caracteristica3,
              onChanged: (value) {
                setState(() {
                  caracteristica3 = value!;
                });
              },
            ),
            ElevatedButton(
              onPressed: () => enviarCaracteristicas(context),
              child: Text('Enviar Características'),
            ),
          ],
        ),
      ),
    );
  }
}
