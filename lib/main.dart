import 'package:flutter/material.dart';

import 'package:flutter_application_1/DetalhesCulinariaBrasileira.dart';
import 'package:flutter_application_1/Home.dart';
import 'package:flutter_application_1/DetalhesError.dart';
import 'package:flutter_application_1/Pedidos.dart';
import 'package:flutter_application_1/Usuario.dart';
import 'package:google_fonts/google_fonts.dart';
import 'mapa.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {

  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Home(),
        '/detalhesError': (context) => DetalhesErrorPage(),
        '/pedidos': (context) => Pedidos(),
        '/usuario': (context) => Usuario(),
        '/detalhesCulinariaBrasileira': (context) => DetalhesCulinariaBrasileira(),
         '/mapa': (context) => Mapa(),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: Center(
          child: Image.asset("assets/img/entrada.png"),
        ),
      ),
    );
  }
}
