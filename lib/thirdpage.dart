import 'package:flutter/material.dart';

class Third extends StatefulWidget {
  Third({Key? key}) : super(key: key);

  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  Color color = Colors.blue;
  
  void Cambiarcolor() {
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
                onPressed: Cambiarcolor, child: const Text('Cambiar color')),
          ],
        ),
      ),
    );
  }
}
