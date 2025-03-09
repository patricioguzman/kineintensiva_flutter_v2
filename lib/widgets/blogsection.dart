import 'package:flutter/material.dart';
import 'dart:async';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BlogSection extends StatefulWidget {
  const BlogSection({super.key});

  @override
  _BlogSectionState createState() => _BlogSectionState();
}

class _BlogSectionState extends State<BlogSection> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<Map<String, dynamic>> blogPosts = [
    {
      'title': 'Videos promocionales',
      'date': '14 de Mayo, 2019',
      'image': 'assets/images/videos.jpg',
      'content': 'Lista de videos promocionales de Kineintensiva.',
      'youtubeList': [
        'pv_erOcQa7U', 'hdrChn37Phs', '8oHyZpwm-ms', 'DR0s_TVKWX0', 'jX5sOSKKr8k',
        'MGnYTR-N4jk', 'U0IC_oaW6vg', '8QLvjAxw8p4', 'GRFkZ9NZJQ0', '9W2QAQk3W90',
        '-tP3HKFcdb0', '8FvwGibWnXo', 'S7fYtorxvME', 'dKXh2JCVdFM', 'Ao6XYlESEY0',
        '3XzEzrNSv2M', 'qCb5AUkiA5A'
      ]
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

  void _navigateToBlogDetail(BuildContext context, Map<String, dynamic> post) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlogDetailPage(post: post),
      ),
    );
  }

  Widget _buildBlogCard(Map<String, dynamic> post) {
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
                  height: 600,
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
        ],
      ),
    );
  }
}

class BlogDetailPage extends StatelessWidget {
  final Map<String, dynamic> post;

  const BlogDetailPage({required this.post, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post['title']!),
        backgroundColor: const Color(0xFFF57C00),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(post['image']!, fit: BoxFit.cover),
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
            if (post.containsKey('youtubeList')) ...[
              const SizedBox(height: 20),
              const Text(
                'Videos:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Column(
                children: (post['youtubeList'] as List<String>).map((videoId) {
                  return YoutubePlayerBuilder(
                    player: YoutubePlayer(
                      controller: YoutubePlayerController(
                        initialVideoId: videoId,
                        flags: const YoutubePlayerFlags(
                          autoPlay: false,
                          mute: false,
                        ),
                      ),
                      showVideoProgressIndicator: true,
                      progressIndicatorColor: Colors.amber,
                    ),
                    builder: (context, player) {
                      return Column(
                        children: [
                          player,
                          const SizedBox(height: 10),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
