import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactSection extends StatelessWidget {
    const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Color(0xFF1976D2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Información de Contacto',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text('Dirección: Irarrazaval 5150, Ñuñoa', style: TextStyle(color: Colors.white)),
          Text('Teléfono: +56 22 3154 661', style: TextStyle(color: Colors.white)),
          Text('Email: info@kineintensiva.cl', style: TextStyle(color: Colors.white)),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(FontAwesomeIcons.facebook, color: Colors.white),
              SizedBox(width: 10),
              Icon(FontAwesomeIcons.twitter, color: Colors.white),
              SizedBox(width: 10),
              Icon(FontAwesomeIcons.instagram, color: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}
