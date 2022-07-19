import 'package:flutter/material.dart';
import 'package:statelesswidget/class_llevar_datos.dart';
import 'package:statelesswidget/ejercicio_tres_recibo_datos.dart';

class EjercicioTres extends StatefulWidget {
  const EjercicioTres({Key? key}) : super(key: key);

  @override
  _EjercicioTresState createState() => _EjercicioTresState();
}

/*
  
    Partimos del ejemplo del cambio de color del container.

    tomamos en cuenta la documentacion:

    https://esflutter.dev/docs/cookbook/navigation/passing-data


 */
class _EjercicioTresState extends State<EjercicioTres> {
  // var que se llevará el color a la otra page
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio Tres'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                  'En este ejercicio, se necesita que cambies el valor del color, luego, cambias de pantalla y muestras el color que se dejo anteriormente.'),
            ),
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
              child: const Text('Cambiar color a llevar'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                /* Lo puedes hacer así
                final MisDatos enviarDatos = MisDatos('Datos enviados', _color);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReciboDatosPage(
                      reciboDatos: enviarDatos,
                    ),
                  ),
                ); 
                */

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReciboDatosPage(
                      reciboDatos: MisDatos('Envio el color :', _color),
                    ),
                  ),
                );
              },
              child: const Text('Enviar Datos a otra pagina.'),
            ),
          ],
        ),
      ),
    );
  }
}
