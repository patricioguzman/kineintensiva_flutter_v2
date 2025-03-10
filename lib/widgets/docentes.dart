import 'package:flutter/material.dart';

class DocentesSection extends StatelessWidget {
  const DocentesSection({super.key});

  final List<Map<String, String>> docentes = const [
    {
      'nombre': 'Dr. Antonio Hernández M.',
      'profesion': 'Broncopulmonar. Jefe UCI Adulto Hospital Militar. Profesor Auxiliar Agregado Facultad de Medicina, Universidad de los Andes. Miembro Soc. Chilena de Medicina Intensiva (SOCHIMI).',
      'imagen': 'assets/images/docentes/Antonio-Hernandez.jpg'
    },
    {
      'nombre': 'Dr. Vinko Tomicic F.',
      'profesion': 'Médico Especialista en Medicina Interna – Universidad de Valparaíso. Sub especialista en Medicina Intensiva – Universidad Católica de Chile.',
      'imagen': 'assets/images/docentes/Vinko-Tomicic.jpg'
    },
    {
      'nombre': 'Dr. Sebastián Ugarte U.',
      'profesion': 'Médico Intensivista, Jefe UPC Clínica Indisa. Past-President SOCHMI. Past-president de la Federación Panamericana-Ibérica de Medicina Intensiva. Director Sociedad de Medicina Crítica y de Urgencia (Red de Medicina Intensiva).',
      'imagen': 'assets/images/docentes/Sebastian-Ugarte.jpg'
    },
    {
      'nombre': 'Dr. Enrique Hess M.',
      'profesion': 'Neurocirujano Hospital del Trabajador, Hospital Militar de Santiago y HUAP.',
      'imagen': 'assets/images/docentes/Enrique-Hess.jpg'
    },
    {
      'nombre': 'Dra. Janette Dabanch.',
      'profesion': 'Infectóloga, Hospital Clínico Universidad de Chile, Directora Nacional Sociedad Chilena de Infectología.',
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
      'profesion': 'Cirugía de Tórax Hospital Militar de Santiago, Clínica Universidad de Los Andes.',
      'imagen': 'assets/images/docentes/Jaime-Gonzalez-F.jpg'
    },
    {
      'nombre': 'Dr. Juan Antonio Espinoza Huircalaf.',
      'profesion': 'Cirugía Cardiovascular (Hospital Clínico U. de Chile/C. INDISA). Past-President Soc. Chilena de Medicina Crítica y Urgencia (Red Intensiva).',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Dr. Rodrigo Mariño.',
      'profesion': 'Médico Intensivista UPC adultos Clínica INDISA.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Dr.Cristóbal Balmaceda.',
      'profesion': 'Cardiólogo Clínica Dávila.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Sr. Nicolás Orellana Solari',
      'profesion': 'Abogado, Magíster en Derecho Procesal. Profesor Diplomado en Litigación Pontificia Universidad Católica de Chile. Jefe de estudios Defensoría Penal Pública Metropolitana Sur.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Ps. Andrea Tognarelli Guzmán',
      'profesion': 'Psicóloga, Magíster en Psicología Clínica PUC, Hospital del Trabajador.',
      'imagen': 'assets/images/docentes/Andrea-Tognarelli-G.jpg'
    },
    {
      'nombre': 'Klgo. Jorge Molina B.',
      'profesion': 'Especialista en Kinesiología Respiratoria (DENAKE). UCI Clínica Alemana. Director Carrera de Kinesiología, Universidad del Desarrollo. Presidente DENAKE.',
      'imagen': 'assets/images/docentes/Jorge-Molina.jpg'
    },
    {
      'nombre': 'Klgo. Eduardo Tognarelli G.',
      'profesion': 'Especialista DENAKE en Kinesiología Intensiva. Terapeuta Respiratorio Certificado (CLCPTR). Unidad de Cuidado Intensivo Hospital Militar de Santiago. Past- President de la División de Kinesiología Intensiva de la SOCHMI. Past President Colegio de Kinesiólogos. Docente Clínico Universidad Andres Bello.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Juan Eduardo Keymer',
      'profesion': 'UCI Clínica Alemana, Past-President de la División de Kinesiología Intensiva de la SOCHMI. Docente Kinesiología Universidad del Desarrollo. Especialista Kinesiología Respiratoria e Intensiva (DENAKE).',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Javier Salas O.',
      'profesion': 'Unidad Paciente Crítico Hospital Guillermo Grant Benavente, Concepción. Diplomado en Pedagogía en Educación Superior. Diplomado Especialista en Kinesiología Respiratoria. Terapista Respiratorio Certificado (LABPCRT) NBRC.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Rodrigo Adasme J.',
      'profesion': 'Terapia Respiratoria Universidad Católica. Terapista Respiratorio Certificado ICRC. Instructor PALS.',
      'imagen': 'assets/images/docentes/Rodrigo-Adasme.jpg'
    },
    {
      'nombre': 'Klgo. Juan E. Lee G.',
      'profesion': 'Especialista en Kinesiología Intensiva (DENAKE). Miembro SOCHIMI, Red de Medicina Intensiva. UPC Clínica Indisa. Docente Kinesiología UNAB.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klga. Paola Tapia H.',
      'profesion': 'Terapeuta Vojta. Especialista en Neurokinesiología y Kinesiología Respiratoria (DENAKE). UCI Pediátrica y Neonatogía, Hospital Militar de Santiago. Instructor EMPACT (Emergency Medical Patients Assessment, Care and Transport). Instructor ACLS ECSI Emergency Care & Safety Institute. Instructor EPC NAEMT Emergency pediatric Care. Instructor AMLS NAEMT.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Marcelo Videla Varas',
      'profesion': 'Unidad de Paciente Crítico Hospital de Linares.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Felipe Castillo',
      'profesion': 'Especialista en Kinesiología Intensiva (DENAKE), Coordinador Kinesiología UPC Clínica Indisa, Red de Medicina intensiva y miembro SOCHIMI.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Sergio Díaz San Martín',
      'profesion': 'Kinesiólogo UPC Hospital Sótero del Rio. Especialista DENAKE en Kinesiología Intensiva.',
      'imagen': 'assets/images/docentes/Sergio-Diaz.jpg'
    },
    {
      'nombre': 'Klgo. José Luis Sufán',
      'profesion': 'Instructor LABIC, Guía internado clínico UNAB, UPC Clínica Indisa.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klga. Carolina Silva Gutierrez',
      'profesion': 'UPC Hospital Padre Hurtado, Clínica Indisa.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Daniel San Martín Espinoza',
      'profesion': 'Kinesiólogo especialista en Neurokinesiología DENAKE. Docente Clínico y postgrado Universidad de Temuco.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Hans Báez',
      'profesion': 'Jefe técnico Kinesiólogos UPC. Hospital del Trabajador.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
    {
      'nombre': 'Klgo. Daniel Godoy Olave',
      'profesion': 'Hospital San Borja Arriarán.',
      'imagen': 'assets/images/docentes/default.jpg'
    },
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
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center, // Asegura alineación vertical correcta
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipOval(
                        child: Image.asset(
                          docente['imagen']!,
                          fit: BoxFit.cover,
                          width: 50,  // Tamaño fijo para evitar que se expanda
                          height: 50,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Espaciado uniforme
                    Expanded( // Usa Expanded para evitar desbordamientos
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            docente['nombre']!,
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            maxLines: 1, // Limita el número de líneas
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4), // Espacio más pequeño entre nombre y profesión
                          Text(
                            docente['profesion']!,
                            style: const TextStyle(fontSize: 12),
                            maxLines: 2, // Máximo 2 líneas para mantener un tamaño uniforme
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
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
