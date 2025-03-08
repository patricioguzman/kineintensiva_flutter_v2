import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xFF1976D2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Información de Contacto',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            children: [
              Icon(Icons.location_on, color: Colors.white),
              SizedBox(width: 10),
              Text('Dirección: Irarrazaval 5150, Ñuñoa', style: TextStyle(color: Colors.white)),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.phone, color: Colors.white),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () => _launchURL('tel:+56223154661'),
                child: const Text('Teléfono: +56 22 3154 661', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.email, color: Colors.white),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () => _launchURL('mailto:info@kineintensiva.cl'),
                child: const Text('Email: info@kineintensiva.cl', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                onPressed: () => _launchURL('https://www.facebook.com/kineintensiva/'),
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
                onPressed: () => _launchURL('https://twitter.com/kineintensiva'),
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                onPressed: () => _launchURL('https://www.instagram.com/kineintensiva/'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
