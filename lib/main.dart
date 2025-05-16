import 'package:flutter/material.dart';
import 'package:food_map/Home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

@override
Widget build(BuildContext context) {
  return MaterialApp(
   title: 'Meu App',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(
          bodyLarge: GoogleFonts.poppins(fontWeight: FontWeight.w600), 
          bodyMedium: GoogleFonts.poppins(fontWeight: FontWeight.w300), 
        ),
      ),
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
