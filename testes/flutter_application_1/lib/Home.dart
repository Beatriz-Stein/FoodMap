import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            width: 359,
            height: 55,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Color(0xFFECC49A).withOpacity(0.8),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Icon(Icons.search, color: Color(0xFFECC49A)),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Pesquisa',
                      hintStyle: TextStyle(
                        color: Color(0xFFECC49A),
                        fontSize: 20,
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.only(top: 15),
              children: [
                Text.rich(
                  TextSpan(
                    text: 'Descubra por tipo de ',
                    style: TextStyle(fontSize: 20),
                    children: [
                      TextSpan(
                        text: 'Culinária',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 16),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 26),
                  width: 300,
                  height: 100,
                  child: InkWell(
                    onTap: () {
                      // chamar tela culinaria italiana
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Positioned.fill(
                            child: Image.asset(
                              "assets/img/comidaJaponesa.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12,
                          bottom: 12,
                          child: Text(
                            'Japonesa',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 26),
                  width: 300,
                  height: 100,
                  child: InkWell(
                    onTap: () {
                      // chamar tela culinaria brasileira
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Positioned.fill(
                            child: Image.asset(
                              "assets/img/comidaBrasileira.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12,
                          bottom: 12,
                          child: Text(
                            'Brasileira',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 26),
                  width: 300,
                  height: 100,
                  child: InkWell(
                    onTap: () {
                      // chamar tela culinaria italiana
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Positioned.fill(
                            child: Image.asset(
                              "assets/img/comidaItaliana.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12,
                          bottom: 12,
                          child: Text(
                            'Italiana',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 26),
                  width: 300,
                  height: 100,
                  child: InkWell(
                    onTap: () {
                      // chamar tela culinaria Francesa
                    },
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Positioned.fill(
                            child: Image.asset(
                              "assets/img/comidaFrancesa.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 12,
                          bottom: 12,
                          child: Text(
                            'Francesa',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Text.rich(
                  TextSpan(
                    text: 'Mais populares ',
                    style: TextStyle(fontSize: 20),
                    children: [
                      TextSpan(
                        text: 'perto de você',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 26),
                  width: 300,
                  height: 100,
                  child: Image.asset("assets/img/popularChurrascaria.png"),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 0, horizontal: 26),
                  width: 100,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Color(0xFFECC49A), // cor de preenchimento
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xFFECC49A)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      //chamar classe navegação
    );
  }
}
