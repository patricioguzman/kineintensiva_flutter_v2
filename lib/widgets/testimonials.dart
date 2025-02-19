import 'package:flutter/material.dart';

class Testimonials extends StatelessWidget {
  Testimonials({Key? key}) : super(key: key);

  final List<Map<String, String>> testimonials = [
    {
      'name': 'Juan Pérez',
      'testimonial': 'Este curso superó mis expectativas. Material de calidad y profesores increíbles.',
    },
    {
      'name': 'María González',
      'testimonial': 'Aprendí mucho y logré mejorar mis habilidades en kinesiología intensiva.',
    },
    {
      'name': 'Carlos Rojas',
      'testimonial': 'La mejor inversión que he hecho en mi formación profesional.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Lo que nuestros estudiantes dicen',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          ...testimonials.map((testimonial) => _buildTestimonialItem(testimonial)).toList(),
        ],
      ),
    );
  }

  Widget _buildTestimonialItem(Map<String, String> testimonial) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '"${testimonial['testimonial']}"',
            style: TextStyle(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            '- ${testimonial['name']}',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.orangeAccent,
            ),
          ),
        ],
      ),
    );
  }
}
