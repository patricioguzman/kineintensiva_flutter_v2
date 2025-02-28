import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CourseSignupWindow extends StatefulWidget {
  const CourseSignupWindow({super.key});

  @override
  _CourseSignupWindowState createState() => _CourseSignupWindowState();
}

class _CourseSignupWindowState extends State<CourseSignupWindow> {
  int _selectedIndex = -1;

  final List<String> _tabs = [
    'Resumen',
    'Plan de estudios',
    'Práctica Clínica',
    'Docentes',
  ];

  final List<IconData> _icons = [
    Icons.description,
    Icons.book,
    Icons.local_hospital,
    Icons.person,
  ];

  final List<Widget> _tabContents = [
    const Center(child: Text('Contenido del Resumen', style: TextStyle(fontSize: 16))),
    const Center(child: Text('Contenido del Plan de estudios', style: TextStyle(fontSize: 16))),
    const Center(child: Text('Contenido de Práctica Clínica', style: TextStyle(fontSize: 16))),
    const Center(child: Text('Contenido de Docentes', style: TextStyle(fontSize: 16))),
  ];

  void _launchURL() async {
    const url = 'https://www.inscripcion.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        width: 500,
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/VIIcurso.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 20),
                _buildAccordionMenu(),
                const SizedBox(height: 20),
                if (_selectedIndex != -1)
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    child: SingleChildScrollView(
                      child: _tabContents[_selectedIndex],
                    ),
                  ),
              ],
            ),
            Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: _launchURL,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.assignment, color: Colors.black),
                      SizedBox(width: 5),
                      Text(
                        'Inscripción',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccordionMenu() {
    return Column(
      children: List.generate(_tabs.length, (index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = _selectedIndex == index ? -1 : index;
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: _selectedIndex == index ? const Color(0xFFF57C00) : Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(_icons[index], color: _selectedIndex == index ? Colors.white : Colors.black),
                    const SizedBox(width: 5),
                    Text(
                      _tabs[index],
                      style: TextStyle(
                        color: _selectedIndex == index ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (_selectedIndex == index)
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: _tabContents[index],
              ),
          ],
        );
      }),
    );
  }
}
