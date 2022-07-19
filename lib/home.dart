import 'package:flutter/material.dart';
import 'package:statelesswidget/ejercicio_dos.dart';
import 'package:statelesswidget/ejercicio_tres.dart';
import 'package:statelesswidget/ejercicio_uno.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage - Menu'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Esta página es la principal.'),
            const SizedBox(height: 20),
            const Text('De aquí se va a partir para las demás páginas.'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EjercicioUno(),
                  ),
                );
              },
              child: const Text('Ejercicio 1'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EjercicioDos(),
                  ),
                );
              },
              child: const Text('Ejercicio 2'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EjercicioTres(),
                  ),
                );
              },
              child: const Text('Ejercicio 3'),
            ),
          ],
        ),
      ),
    );
  }
}
