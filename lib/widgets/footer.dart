import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Color(0xFF1976D2),
      child: Column(
        children: [
          Text(
            '© 2025 KineIntensiva',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Términos y Condiciones', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(width: 10),
              TextButton(
                onPressed: () {},
                child: Text('Política de Privacidad', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
