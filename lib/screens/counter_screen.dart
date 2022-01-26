import 'package:flutter/material.dart';

//Widget sin estado
class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  void manageOperation(String operation) {
    if (operation == 'add') {
      counter++;
    }
    if (operation == 'reset') {
      counter = 0;
    }
    if (operation == 'minus') {
      if (counter > 0) {
        counter--;
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle stylesText = TextStyle(fontSize: 15.0, color: Colors.black);
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.black,
          title: const Center(child: Text('CounterScreen')),
          elevation: 5, // Para la sombra
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Para centrar
              // crossAxisAlignment: CrossAxisAlignment.center,//Horizontal
              children: <Widget>[
                const Text(
                  'Taps: ',
                  textAlign: TextAlign.center,
                  style: stylesText,
                ),
                Text(
                  '$counter',
                  textAlign: TextAlign.center,
                  style: stylesText,
                )
              ]),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        //floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        floatingActionButton: CustomFloatingButton(
          manageOperation: manageOperation,
        ));
  }
}

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    Key? key,
    required this.manageOperation,
  }) : super(key: key);
  final Function manageOperation;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // ALinear
      children: <Widget>[
        FloatingActionButton(
          child: const Icon(Icons.exposure_plus_1_outlined),
          tooltip: 'Agregar',
          onPressed: () => manageOperation('add'),
        ),
        /*  const SizedBox(
          width: 20,
        ),*/
        FloatingActionButton(
          child: const Icon(Icons.delete_forever_outlined),
          tooltip: 'Resetear',
          onPressed: () => manageOperation('reset'),
        ),
        //Cajanas fantasma para dar espacio
        /*  const SizedBox(
          width: 20,
        ),*/
        FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_outlined),
          tooltip: 'Disminuir',
          onPressed: () => manageOperation('minus'),
        )
      ],
    );
  }
}
