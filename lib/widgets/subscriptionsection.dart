import 'package:flutter/material.dart';

class SubscriptionSection extends StatelessWidget {
    const SubscriptionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.grey[200],
      child: Column(
        children: [
          Text(
            'A Nuestras Noticias',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Ingrese su email',
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFF57C00),
            ),
            child: Text('SUSCRIBIRSE', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
