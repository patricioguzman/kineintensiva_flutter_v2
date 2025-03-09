import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'docentes.dart'; // Importa el archivo de docentes
import 'practicaclinica.dart'; // Importa el archivo de práctica clínica

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
    const Text(
      'OBJETIVO DEL CURSO\n\n'
      'Facilitar y contribuir al desarrollo de competencias en kinesiología intensiva expresadas en el perfil de egreso del curso, que permitan un desempeño clínico adecuado a las actuales exigencias de las Unidades de Paciente Crítico del país”.\n\n'
      'Formar Kinesiólogos en Medicina Intensiva y contribuir en la especialización en esta área de la kinesiología\n'
      'Preparar Kinesiólogos altamente capacitados en la atención de Unidades de Paciente Crítico\n'
      'Entregar conocimientos teóricos específicos de Kinesiología Intensiva para optimizar el desempeño profesional en las Unidades de Paciente Crítico\n'
      'Capacitar al kinesiólogo para que se integre al equipo de las unidades de cuidados intensivos del país.\n'
      'Desarrollar habilidades prácticas en el desempeño profesional en el área de la terapia respiratoria y la implementación de actividades tendientes a la recuperación funcional de los usuarios hospitalizados en Unidades de Paciente Crítico.\n'
      'Analizar las posibilidades de investigación científica en la Kinesiología Intensiva.',
      style: TextStyle(fontSize: 16),
    ),
    const Text('Contenido del Plan de estudios', style: TextStyle(fontSize: 16)),
    const PracticaClinicaSection(), // Usa el nuevo widget
    const DocentesSection(), // Usa el nuevo widget
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inscripción al Curso'),
        backgroundColor: const Color(0xFFF57C00),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              GestureDetector(
                onTap: _launchURL,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
            ],
          ),
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
