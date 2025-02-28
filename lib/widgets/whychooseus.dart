import 'package:flutter/material.dart';

class WhyChooseUs extends StatelessWidget {
  const WhyChooseUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text(
            'BIENVENIDO A KINEINTENSIVA',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth >= 1200) {
                return GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: _buildBenefitItems(),
                );
              } else if (constraints.maxWidth >= 600) {
                return GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: _buildBenefitItems(),
                );
              } else {
                return Column(
                  children: _buildBenefitItems(),
                );
              }
            },
          ),
        ],
      ),
    );
  }

  List<Widget> _buildBenefitItems() {
    return [
      _buildBenefitItem('Docentes Calificados', 'El curso de Kinesiología intensiva cuenta con un gran grupo de docentes formado por: 21 Kinesiólogos, 9 Médicos, 1 Enfermera 1 Psicóloga y 1 Abogado.', Icons.person),
      _buildBenefitItem('Práctica Clínica', 'El Curso cuenta con 94 horas prácticas, 10 de las cuales se realizan en talleres demostrativos y 84 horas en práctica clínica en una unidad de cuidados intensivos.', Icons.local_hospital),
      _buildBenefitItem('La Mejor Infraestructura', 'Un convenio con la Universidad de las Américas permite desarrollar las actividades teóricas y talleres en las dependencias del campus Providencia.', Icons.location_city),
      _buildBenefitItem('Experiencia y Trayectoria', '19 años de experiencia avalan la realización del curso de Kinesiología intensiva, lo que ha permitido gran reconocimiento en centros clínicos del país.', Icons.history),
    ];
  }

  Widget _buildBenefitItem(String title, String desc, IconData icon) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFFF57C00), size: 40), // Increased size from 24 to 50
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(desc),
    );
  }
}
