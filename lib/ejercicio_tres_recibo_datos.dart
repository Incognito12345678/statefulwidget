import 'package:flutter/material.dart';
import 'package:statelesswidget/class_llevar_datos.dart';

/*
  * Todo esto con base a la documentacion.
*/
class ReciboDatosPage extends StatelessWidget {
  // Declara un campo que contenga la clase de tus datos
  final MisDatos reciboDatos;

  // En el constructor, se requiere el objeto de los datos a recibir
  const ReciboDatosPage({Key? key, required this.reciboDatos})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio Tres :: Resultado'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('En este ejercicio Recibo y muestro info que recibo'),
            const SizedBox(height: 20),
            Text(reciboDatos.title),
            Container(
              color: reciboDatos.elColor,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
