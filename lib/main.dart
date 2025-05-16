import 'package:flutter/material.dart';
import 'package:food_map/Home.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      body: Builder(builder: (context) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Home(),
          ),
        ),
         child: Image.asset("assets/img/entrada.png"),
      )
      )
    ),
  );
}
}
