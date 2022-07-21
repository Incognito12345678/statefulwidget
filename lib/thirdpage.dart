import 'package:flutter/material.dart';
import 'package:statelesswidget/fourthscreen.dart';
import 'package:statelesswidget/models/datos.dart';

class Third extends StatefulWidget {
  Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  Color color = Colors.blue;

  void cambiarcolor() {
    setState(() {
      if (color == Colors.blue) {
        color = Colors.green;
      } else {
        color = Colors.blue;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: color,
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: cambiarcolor, child: const Text('Cambiar color')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Fourth(
                                recibirdatos: Datos(
                                  color: color,
                                ),
                              )));
                },
                child: const Text('Next')),
          ],
        ),
      ),
    );
  }
}
