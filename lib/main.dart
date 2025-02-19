import 'package:flutter/material.dart';
import 'widgets/herosection.dart';
import 'widgets/whychooseus.dart';
import 'widgets/countdownsignup.dart';
import 'widgets/testimonials.dart';
import 'widgets/blogsection.dart';
import 'widgets/subscriptionsection.dart';
import 'widgets/contactsection.dart';
import 'widgets/footer.dart';

void main() {
  runApp(KineIntensivaApp());
}

class KineIntensivaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KineIntensiva',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          primary: Color(0xFFF57C00),
          secondary: Color(0xFF1976D2),
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

  void _scrollToSection(GlobalKey key, BuildContext context) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(seconds: 1),
      curve: Curves.easeInOut,
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
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
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
    );
  }

  Widget _buildDrawerItem(String title, IconData icon, GlobalKey key, BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        _scrollToSection(key, context);
      },
    );
  }
}