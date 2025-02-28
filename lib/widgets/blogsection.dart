import 'package:flutter/material.dart';
import 'dart:async';

class BlogSection extends StatefulWidget {
  const BlogSection({super.key});

  @override
  _BlogSectionState createState() => _BlogSectionState();
}

class _BlogSectionState extends State<BlogSection> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<Map<String, String>> blogPosts = [
    {
      'title': 'Importancia de la Kinesiología Intensiva',
      'date': '15 de Febrero, 2025',
      'image': 'assets/images/slide1.jpg',
      'content': 'Contenido completo de la entrada del blog sobre la importancia de la Kinesiología Intensiva...'
    },
    {
      'title': 'Nuevas Técnicas en Rehabilitación Física',
      'date': '10 de Febrero, 2025',
      'image': 'assets/images/slide2.jpg',
      'content': 'Contenido completo de la entrada del blog sobre nuevas técnicas en rehabilitación física...'
    },
    {
      'title': 'Casos de éxito en nuestros cursos',
      'date': '5 de Febrero, 2025',
      'image': 'assets/images/slide3.jpg',
      'content': 'Contenido completo de la entrada del blog sobre casos de éxito en nuestros cursos...'
    },
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < blogPosts.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _navigateToBlogDetail(BuildContext context, Map<String, String> post) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlogDetailPage(post: post),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Noticias del Blog',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= 1200) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: blogPosts.map((post) => Expanded(
                    child: _buildBlogCard(post),
                  )).toList(),
                );
              } else {
                return SizedBox(
                  height: 600, // Increased height from 400 to 600
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: blogPosts.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return _buildBlogCard(blogPosts[index]);
                    },
                  ),
                );
              }
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(blogPosts.length, (index) {
              return GestureDetector(
                onTap: () {
                  _pageController.jumpToPage(index);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: _currentPage == index ? const Color(0xFFF57C00) : Colors.grey),
                    color: _currentPage == index ? const Color(0xFFF57C00) : Colors.transparent,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildBlogCard(Map<String, String> post) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(post['image']!, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post['title']!,
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 14, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text(
                      post['date']!,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () => _navigateToBlogDetail(context, post),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF57C00),
                  ),
                  child: const Text('Ver Más', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BlogDetailPage extends StatelessWidget {
  final Map<String, String> post;

  const BlogDetailPage({required this.post, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post['title']!),
        backgroundColor: const Color(0xFFF57C00),
      ),
      body: SingleChildScrollView( // Added SingleChildScrollView
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Added mainAxisSize
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(post['image']!, fit: BoxFit.cover), // Changed to BoxFit.cover
            const SizedBox(height: 20),
            Text(
              post['title']!,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              post['date']!,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            Text(
              post['content']!,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}