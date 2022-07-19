import 'package:flutter/material.dart';

class EjercicioUno extends StatefulWidget {
  const EjercicioUno({Key? key}) : super(key: key);

  @override
  State<EjercicioUno> createState() => _EjercicioUnoState();
}

class _EjercicioUnoState extends State<EjercicioUno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio Uno'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Ejercicio:: Cambiar de Una pagina a otra'),

            /*
            
            En este punto, ya sabes que existen botones como ElevateButton,
            Tambien ya sabes que al Scaffold se le puede agregar un FloatingActionButton.
            Y sabes que ambos botones tienen los mismo resultados. Su diferencia radica en 
            como se presentan ante el usuario, entreo otos detalles más.


            
            */
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DestinoUnoPage(),
            ),
          );
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

/*
 *   Este widget puede estar en otro archivo dependiedo de tus necesidades y/o arquitectura a seguir 
 */
class DestinoUnoPage extends StatelessWidget {
  const DestinoUnoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejercicio Uno :: Resultado'),
      ),
      body: const Center(
        child: Text('Esta es la pagina destino del ejercicio Uno'),
      ),
    );
  }
}
