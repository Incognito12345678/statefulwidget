import 'package:flutter/material.dart';

class EjercicioDos extends StatefulWidget {
  const EjercicioDos({Key? key}) : super(key: key);

  @override
  State<EjercicioDos> createState() => _EjercicioDosState();
}

class _EjercicioDosState extends State<EjercicioDos> {
  // recuerda : Trata a las variables como privadas siempre que puedas.
  Color _color = Colors.blue;

  // las conviertes en privadas con el underscor _

  // void _cambiarcolor() {
  //   setState(() {
  //     if (color == Colors.blue) {
  //       color = Colors.green;
  //     } else {
  //       color = Colors.blue;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio Dos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Cambiar de Color de un simple container con setState'),
            const SizedBox(height: 20),
            Container(
              color: _color,
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // if en una sola linea. Aquí cambio el color.
                _color = (_color == Colors.blue) ? Colors.green : Colors.blue;

                // Solo refresco el 'ESTADO'
                setState(() {});
              },
              child: const Text('Cambiar color'),
            ),
          ],
        ),
      ),
    );
  }
}
