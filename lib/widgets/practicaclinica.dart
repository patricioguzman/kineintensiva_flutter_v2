import 'package:flutter/material.dart';

class PracticaClinicaSection extends StatelessWidget {
  const PracticaClinicaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'De las 220 horas que certifica el Curso de Kinesiología Intensiva, 94 son horas prácticas, de las cuales 84 se realizan en un Centro Clínico en convenio con el Colegio de Kinesiólogos. Los alumnos del Curso se suman a los equipos clínicos de UPC y acompañados de un Kinesiólogo Tutor, realiza las actividades propias de un intensivista. De esta manera, el Curso busca que sus alumnos experimenten el “saber hacer” de las competencias profesionales.',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 19,
          itemBuilder: (context, index) {
            return Image.asset('assets/images/practica/${index + 1}.jpg', fit: BoxFit.cover);
          },
        ),
      ],
    );
  }
}
