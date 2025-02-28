import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xFF1976D2),
      child: Column(
        children: [
          const Text(
            '© 2025 KineIntensiva',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Términos y Condiciones', style: TextStyle(color: Colors.white)),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: const Text('Política de Privacidad', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
