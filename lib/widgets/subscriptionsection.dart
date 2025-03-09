import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SubscriptionSection extends StatefulWidget {
  const SubscriptionSection({super.key});

  @override
  _SubscriptionSectionState createState() => _SubscriptionSectionState();
}

class _SubscriptionSectionState extends State<SubscriptionSection> {
  final TextEditingController emailController = TextEditingController();
  String message = "";

  Future<void> suscribirse(String email) async {
final url = Uri.parse(
  "https://cors-anywhere.herokuapp.com/https://script.google.com/macros/s/AKfycbwuyo8c5FNsgtepsoHaUQLMxPDvtOZZOIcmw9HpeOMDa7mwgiuklLm4oqheRmv2Psr7KA/exec"
);  try {
    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"email": email}),
    ).then((res) => res); // Forzar seguimiento de redirección

    if (response.statusCode == 200) {
      setState(() {
        message = "¡Suscripción exitosa!";
      });
      print("✅ Suscripción exitosa: ${response.body}");
    } else {
      setState(() {
        message = "Error al suscribirse";
      });
      print("❌ Error en la suscripción: ${response.statusCode} - ${response.body}");
    }
  } catch (error) {
    setState(() {
      message = "Error en la solicitud HTTP: $error";
    });
    print("⚠️ Error en la solicitud HTTP: $error");
  }
}
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
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingrese su email',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => suscribirse(emailController.text),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF57C00),
            ),
            child: const Text('SUSCRIBIRSE', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(height: 10),
          Text(message),
        ],
      ),
    );
  }
}