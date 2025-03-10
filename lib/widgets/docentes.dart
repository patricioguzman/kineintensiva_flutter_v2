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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Docentes del Curso',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: docentes.length,
          itemBuilder: (context, index) {
            final docente = docentes[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10), // Adjust padding
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min, // Minimize the size of the row
                  mainAxisAlignment: MainAxisAlignment.center, // Center the content horizontally
                  children: [
                    ClipOval(
                      child: Image.asset(
                        docente['imagen']!,
                        fit: BoxFit.cover,
                        width: 60, // Standardize width for the circular image
                        height: 60, // Standardize height for the circular image
                      ),
                    ),
                    const SizedBox(width: 8), // Reduce the horizontal spacing
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0), // Reduce horizontal padding
                        child: Column(
                          mainAxisSize: MainAxisSize.min, // Minimize the size of the column
                          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                          children: [
                            Text(
                              docente['nombre']!,
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                              maxLines: 1, // Limit to 1 line
                              overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                            ),
                            const SizedBox(height: 5), // Adjust the vertical spacing
                            Text(
                              docente['profesion']!,
                              textAlign: TextAlign.left,
                              style: const TextStyle(fontSize: 13), // Reduce font size
                              maxLines: 3, // Limit to 3 lines
                              overflow: TextOverflow.ellipsis, // Add ellipsis for overflow
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
