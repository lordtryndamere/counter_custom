import 'package:flutter/material.dart';

//Widget sin estado
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle stylesText =
        TextStyle(fontSize: 15.0, color: Colors.amberAccent);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Center(child: Text('HomeScreen')),
          elevation: 5, // Para la sombra
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Para centrar
              // crossAxisAlignment: CrossAxisAlignment.center,//Horizontal
              children: const <Widget>[
                Text(
                  'Numero de taps: ',
                  textAlign: TextAlign.center,
                  style: stylesText,
                ),
                Text(
                  '10',
                  textAlign: TextAlign.center,
                  style: stylesText,
                )
              ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.ac_unit),
          tooltip: 'Agregar',
          onPressed: () {},
        ));
  }
}
