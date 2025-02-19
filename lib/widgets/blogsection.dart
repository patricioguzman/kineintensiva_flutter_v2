import 'package:flutter/material.dart';

class BlogSection extends StatelessWidget {
     BlogSection({Key? key}) : super(key: key);

  final List<Map<String, String>> blogPosts = [
    {
      'title': 'Importancia de la Kinesiología Intensiva',
      'date': '15 de Febrero, 2025',
      'image': 'assets/images/slide1.jpg',
    },
    {
      'title': 'Nuevas Técnicas en Rehabilitación Física',
      'date': '10 de Febrero, 2025',
      'image': 'assets/images/slide2.jpg',
    },
    {
      'title': 'Casos de éxito en nuestros cursos',
      'date': '5 de Febrero, 2025',
      'image': 'assets/images/slide3.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Noticias del Blog',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          ...blogPosts.map((post) => _buildBlogCard(post)).toList(),
        ],
      ),
    );
  }

  Widget _buildBlogCard(Map<String, String> post) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(post['image']!, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post['title']!,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(
                      post['date']!,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}