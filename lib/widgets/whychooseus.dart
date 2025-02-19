import 'package:flutter/material.dart';

class WhyChooseUs extends StatelessWidget {
  const WhyChooseUs({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '¿Por qué elegir nuestros cursos?',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          _buildBenefitItem('Certificación', 'Curso avalado por instituciones reconocidas.', Icons.school),
          _buildBenefitItem('Formación Integral', 'Incluye aspectos técnicos, legales y de gestión.', Icons.book),
          _buildBenefitItem('Costos Asequibles', 'Diplomado de 220 horas con tarifa accesible.', Icons.attach_money),
          _buildBenefitItem('Apoyo a la Docencia', 'Plataforma Moodle con recursos adicionales.', Icons.laptop),
        ],
      ),
    );
  }

  Widget _buildBenefitItem(String title, String desc, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFFF57C00)),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(desc),
    );
  }
}
