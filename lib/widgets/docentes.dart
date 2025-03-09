import 'package:flutter/material.dart';

class DocentesSection extends StatelessWidget {
  const DocentesSection({super.key});

  final List<Map<String, String>> docentes = const [
    {
      'nombre': 'Dr. Antonio Hernández M.',
      'profesion': 'Broncopulmonar. Jefe UCI Adulto Hospital Militar. Profesor Auxiliar Agregado Facultad de Medicina, Universidad de los Andes. Miembro SOCHIMI.',
      'imagen': 'assets/images/docentes/Antonio-Hernandez.jpg'
    },
    {
      'nombre': 'Dr. Vinko Tomicic F.',
      'profesion': 'Médico Especialista en Medicina Interna – Universidad de Valparaíso. Sub especialista en Medicina Intensiva – Universidad Católica de Chile.',
      'imagen': 'assets/images/docentes/Vinko-Tomicic.jpg'
    },
    {
      'nombre': 'Dr. Sebastián Ugarte U.',
      'profesion': 'Médico Intensivista, Jefe UPC Clínica Indisa. Past-President SOCHMI. Director Sociedad de Medicina Crítica y de Urgencia.',
      'imagen': 'assets/images/docentes/Sebastian-Ugarte.jpg'
    },
    {
      'nombre': 'Dr. Enrique Hess M.',
      'profesion': 'Neurocirujano Clínica las Condes, Hospital Militar de Santiago y HUAP.',
      'imagen': 'assets/images/docentes/Enrique-Hess.jpg'
    },
    {
      'nombre': 'Dra. Janette Dabanch.',
      'profesion': 'Infectóloga, Hospital Militar de Santiago, Directora Nacional Sociedad Chilena de Infectología.',
      'imagen': 'assets/images/docentes/Jeannette-Dabanch.jpg'
    },
    {
      'nombre': 'Dr. Ricardo Olguín L.',
      'profesion': 'Cirujano Vascular Clínica Indisa.',
      'imagen': 'assets/images/docentes/Ricardo-Olguin.jpg'
    },
    {
      'nombre': 'Dr. Edison Montes M.',
      'profesion': 'Médico Urgenciólogo, Interventor SAMU Metropolitano.',
      'imagen': 'assets/images/docentes/Edison-Montes.jpg'
    },
    {
      'nombre': 'Dr. Jaime González F.',
      'profesion': 'Cirugía de Tórax Hospital Militar de Santiago.',
      'imagen': 'assets/images/docentes/Jaime-Gonzalez-F.jpg'
    },
    {
      'nombre': 'Sr. Nicolás Orellana Solari',
      'profesion': 'Abogado, Magíster en Derecho Procesal. Profesor Diplomado en Litigación Pontificia Universidad Católica de Chile.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Ps. Andrea Tognarelli Guzmán',
      'profesion': 'Magíster en Psicología Clínica PUC, Hospital del Trabajador.',
      'imagen': 'assets/images/docentes/Andrea-Tognarelli-G.jpg'
    },
    {
      'nombre': 'EU: María Pía Puebla',
      'profesion': 'Enfermera Clínica Unidad de Tratamiento Intensivo Cardiológico Clínica Las Condes.',
      'imagen': 'assets/images/docentes/Maria-Pia-Puebla.jpg'
    },
    {
      'nombre': 'Klga. Loreto Henríquez',
      'profesion': 'UCI Adultos Hospital Padre Hurtado. Especialista en Kinesiología Intensiva y Respiratoria (DENAKE).',
      'imagen': 'assets/images/docentes/Loreto-Henriquez.jpg'
    },
    {
      'nombre': 'Klgo. Eduardo Tognarelli G.',
      'profesion': 'Especialista DENAKE en Kinesiología Intensiva. Unidad de Cuidado Intensivo Hospital Militar de Santiago.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Juan Eduardo Keymer',
      'profesion': 'UCI Clínica Alemana. Past-President de la División de Kinesiología Intensiva de la SOCHMI.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Jorge Molina B.',
      'profesion': 'Especialista en Kinesiología Respiratoria (DENAKE). UCI Clínica Alemana.',
      'imagen': 'assets/images/docentes/Jorge-Molina.jpg'
    },
    {
      'nombre': 'Klgo. Rodrigo Adasme J.',
      'profesion': 'Terapia Respiratoria Universidad Católica. Terapista Respiratorio Certificado ICRC.',
      'imagen': 'assets/images/docentes/Rodrigo-Adasme.jpg'
    },
    {
      'nombre': 'Klgo. Sergio Díaz San Martín',
      'profesion': 'Kinesiólogo UPC Hospital Sótero del Río. Especialista DENAKE en Kinesiología Intensiva.',
      'imagen': 'assets/images/docentes/Sergio-Diaz.jpg'
    },
    {
      'nombre': 'Klgo. Felipe González',
      'profesion': 'Guía internado clínico UNAB, UPC Clínica Indisa.',
      'imagen': 'assets/images/docentes/Felipe-Gonzalez.jpg'
    },
    {
      'nombre': 'Dra. Macarena Fernández',
      'profesion': 'Cirujano Abdominal Hospital Militar de Santiago.',
      'imagen': 'assets/images/docentes/Macarena-Fernandez.jpg'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Docentes del Curso',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: docentes.length,
          itemBuilder: (context, index) {
            final docente = docentes[index];
            return Card(
              child: Column(
                children: [
                  Image.asset(
                    docente['imagen']!,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 150, // Tamaño fijo para la imagen
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          docente['nombre']!,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          docente['profesion']!,
                          style: const TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
