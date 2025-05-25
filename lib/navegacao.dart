import 'package:flutter/material.dart';

class Navegacao extends StatefulWidget {
  final Widget child;
  final int currentIndex;

  const Navegacao({
    Key? key,
    required this.child,
    required this.currentIndex,
  }) : super(key: key);

  @override
  State<Navegacao> createState() => _NavegacaoState();
}

class _NavegacaoState extends State<Navegacao> {
  void _onItemTapped(int index) {
    if (index == widget.currentIndex) return;

    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/detalhesError');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/pedidos');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/usuario');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    const larguraMaxima = 400.0;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: larguraMaxima),
          child: widget.child,
        ),
      ),
      bottomNavigationBar: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: larguraMaxima),
        child: BottomNavigationBar(
          currentIndex: widget.currentIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: Color(0xFFECC49A),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              label: 'Detalhes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_shipping),
              label: 'Pedidos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Usuário',
            ),
          ],
        ),
      ),
    );
  }
}
