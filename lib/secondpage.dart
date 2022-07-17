import 'package:flutter/material.dart';


class SecondPage extends StatefulWidget {
  SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Second Page'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //volver a la pantalla anterior
          Navigator.pop(context);
        },
        child: const Icon(Icons.navigate_before),
      ),
    );
  }
}
