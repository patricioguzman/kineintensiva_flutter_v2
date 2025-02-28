import 'package:flutter/material.dart';
import 'widgets/herosection.dart';
import 'widgets/whychooseus.dart';
import 'widgets/countdownsignup.dart';
import 'widgets/testimonials.dart';
import 'widgets/blogsection.dart';
import 'widgets/subscriptionsection.dart';
import 'widgets/contactsection.dart';
import 'widgets/footer.dart';
import 'widgets/course_signup_window.dart';

void main() {
  runApp(KineIntensivaApp());
}

class KineIntensivaApp extends StatelessWidget {
  const KineIntensivaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KineIntensiva',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          primary: const Color(0xFFF57C00),
          secondary: const Color(0xFF1976D2),
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  final GlobalKey heroKey = GlobalKey();
  final GlobalKey whyChooseKey = GlobalKey();
  final GlobalKey countdownKey = GlobalKey();
  final GlobalKey testimonialsKey = GlobalKey();
  final GlobalKey blogKey = GlobalKey();
  final GlobalKey subscriptionKey = GlobalKey();
  final GlobalKey contactKey = GlobalKey();

  LandingPage({super.key});

  void _scrollToSection(GlobalKey key, BuildContext context) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  void _showCourseSignupWindow(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CourseSignupWindow();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Image.asset('assets/images/logo.png', height: 40),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.blue),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person, color: Colors.blue),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFFF57C00)),
              child: Text('Menú', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            _buildDrawerItem('Inicio', Icons.home, heroKey, context),
            _buildDrawerItem('¿Por qué elegirnos?', Icons.check_circle, whyChooseKey, context),
            _buildDrawerItem('Testimonios', Icons.comment, testimonialsKey, context),
            _buildDrawerItem('Blog', Icons.article, blogKey, context),
            _buildDrawerItem('Suscripción', Icons.mail, subscriptionKey, context),
            _buildDrawerItem('Contacto', Icons.contact_mail, contactKey, context),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeroSection(key: heroKey),
            WhyChooseUs(key: whyChooseKey),
            CountdownSignup(key: countdownKey),
            Testimonials(key: testimonialsKey),
            BlogSection(key: blogKey),
            SubscriptionSection(key: subscriptionKey),
            ContactSection(key: contactKey),
            Footer(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCourseSignupWindow(context),
        backgroundColor: const Color(0xFFF57C00),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildDrawerItem(String title, IconData icon, GlobalKey key, BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title, style: const TextStyle(color: Colors.black)),
      onTap: () {
        Navigator.pop(context);
        _scrollToSection(key, context);
      },
    );
  }
}