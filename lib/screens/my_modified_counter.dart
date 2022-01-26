import 'package:flutter/material.dart';

class MyOwnCounter extends StatefulWidget {
  const MyOwnCounter({Key? key}) : super(key: key);

  @override
  State<MyOwnCounter> createState() => _MyOwnCounterState();
}

class _MyOwnCounterState extends State<MyOwnCounter> {
  int counter = 0;
  manageOperations(String type) {
    if (type == 'add') {
      counter++;
      setState(() {});
    }
    if (type == 'reset') {
      counter = 0;
      setState(() {});
    }
    if (type == 'minus') {
      if (counter > 0) {
        counter--;
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    const appBarTexts =
        TextStyle(color: Colors.black, letterSpacing: 2.0, fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Mi Own Counter',
            style: appBarTexts,
            textAlign: TextAlign.center,
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Has presionado estas veces :',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text('estas veces $counter'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:
          CustomFloatingActionButton(manageOperations: manageOperations),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    Key? key,
    required this.manageOperations,
  }) : super(key: key);
  final Function manageOperations;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        FloatingActionButton(
            child: const Icon(Icons.add_circle),
            tooltip: 'Agregar',
            backgroundColor: Colors.lightGreen,
            onPressed: () => manageOperations('add')),
        FloatingActionButton(
            child: const Icon(Icons.cleaning_services),
            tooltip: 'Reset',
            backgroundColor: Colors.redAccent,
            onPressed: () => manageOperations('reset')),
        FloatingActionButton(
            child: const Icon(Icons.motion_photos_pause_sharp),
            tooltip: 'Disminuir',
            backgroundColor: Colors.grey,
            onPressed: () => manageOperations('minus')),
      ],
    );
  }
}
