import 'package:flutter/material.dart';
import 'package:flutter_app_1/screens/counter_screen.dart';
import 'package:flutter_app_1/screens/home_screen.dart';
import 'package:flutter_app_1/screens/my_modified_counter.dart';

void main() {
  runApp(const HelloWord());
}

class HelloWord extends StatelessWidget {
  const HelloWord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomeScreen(),
      home: MyOwnCounter(),
    );
  }
}
