import 'package:flutter/material.dart';

class SubscriptionSection extends StatelessWidget {
    const SubscriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.grey[200],
      child: Column(
        children: [
          const Text(
            'A Nuestras Noticias',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingrese su email',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF57C00),
            ),
            child: const Text('SUSCRIBIRSE', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
