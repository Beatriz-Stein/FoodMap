import 'package:flutter/material.dart';
import 'navegacao.dart';

class Usuario extends StatelessWidget {
  const Usuario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navegacao(
      currentIndex: 3,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage(
                        "assets/img/usuarioConfig.png",
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Clarice Lispector',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 32),
                    _buildOption(icon: Icons.edit, label: 'Editar Perfil'),
                    _buildOption(icon: Icons.settings, label: 'Ajustes'),
                    _buildOption(icon: Icons.public, label: 'Privacidade'),
                    _buildOption(icon: Icons.support_agent, label: 'Suporte'),
                    _buildOption(
                      icon: Icons.notifications,
                      label: 'Notificações',
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            color: Color(0xFFECC49A),
            thickness: 2,
            height: 2,
            indent: 0,
            endIndent: 0,
          ),
        ],
      ),
    );
  }

  Widget _buildOption({
    required IconData icon,
    required String label,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        decoration: BoxDecoration(
          color: const Color(0xFFECC49A),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, size: 28, color: Colors.black),
            const SizedBox(width: 16),
            Text(
              label,
              style: const TextStyle(fontSize: 18, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
