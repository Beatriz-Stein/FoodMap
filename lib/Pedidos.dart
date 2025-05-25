import 'package:flutter/material.dart';
import 'package:flutter_application_1/navegacao.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navegacao(
      currentIndex: 2,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Seus pedidos',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Ontem',
                      style: TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(height: 16),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/img/mahai.png'),
                    ),
                    const SizedBox(height: 8),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFDF0E3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Reserva feita em Mahai para o dia\n23/04/2025',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                    const SizedBox(height: 32),
                    const Text(
                      'Há uma semana',
                      style: TextStyle(color: Colors.black54),
                    ),
                    const SizedBox(height: 16),

                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/img/laBelleCusine.png'),
                    ),
                    const SizedBox(height: 8),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFECC49A),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Deixe sua avaliação sobre o restaurante\nLa Belle Cuisine.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                    const SizedBox(height: 8),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFDF0E3),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Faça sua avaliação!',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            color: Color(0xFFECC49A),
            thickness: 2,
            height: 2,
          ),
        ],
      ),
    );
  }
}
