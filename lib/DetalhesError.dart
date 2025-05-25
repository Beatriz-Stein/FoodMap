import 'package:flutter/material.dart';
import 'navegacao.dart';

class DetalhesErrorPage extends StatelessWidget {
  const DetalhesErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navegacao(
      currentIndex: 1,
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(text: 'Nenhuma '),
                        TextSpan(
                          text: 'categoria',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextSpan(text: ' selecionada no momento'),
                      ],
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: 500,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor : const Color(0xFFECC49A), 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 20),
                      ),
                      child: const Text(
                        'Voltar para o menu',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
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
