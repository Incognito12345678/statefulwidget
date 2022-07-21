import 'package:flutter/material.dart';
import 'package:statelesswidget/models/datos.dart';
import 'package:statelesswidget/thirdpage.dart';

class Fourth extends StatelessWidget {
  final Datos recibirdatos;

  Fourth({Key? key, required this.recibirdatos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Container(
              color: recibirdatos.color,
              width: 100,
              height: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => Third()));
                },
                child: const Text('Back')),
          ],
        ),
      ),
    );
  }
}
