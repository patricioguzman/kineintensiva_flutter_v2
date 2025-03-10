import 'package:flutter/material.dart';

class PlanEstudios extends StatelessWidget {
  const PlanEstudios({super.key});

  final List<Map<String, dynamic>> modulos = const [
    {
      'titulo': '1er MÓDULO: FISIOLOGÍA Y FISIOPATOLOGÍA RESPIRATORIA',
      'fecha': 'Sábado 22 de Marzo',
      'clases': [
        {'tema': 'Recepción y entrega de información', 'hora': '08:00 – 08:30'},
        {'tema': 'Sistema respiratorio y fisiología respiratoria aplicada: Estructura y función', 'hora': '08:30 – 09:30'},
        {'tema': 'Sistema respiratorio y fisiología respiratoria aplicada: Mecánica, intercambio gaseoso y Transporte de oxígeno', 'hora': '09:30 – 10:30'},
        {'tema': 'Receso', 'hora': '10:30 – 11:00'},
        {'tema': 'Fisiopatología respiratoria básica', 'hora': '11:00 – 11:45'},
        {'tema': 'Semiología cardiorrespiratoria', 'hora': '11:45 – 12:45'},
        {'tema': 'Vía aérea artificial', 'hora': '12:45 – 13:30'},
        {'tema': 'Sistemas de humidificación', 'hora': '15:00 – 15:45'},
        {'tema': 'Radiología Básica del Sistema Respiratorio: Criterios de calidad y anatomía radiológica', 'hora': '15:45 – 16:30'},
        {'tema': 'Radiología Básica del Sistema Respiratorio: Interpretación de la radiografía y la TAC', 'hora': '16:30 – 17:15'},
        {'tema': 'Receso', 'hora': '17:15 – 17:45'},
        {'tema': 'Cirugía de Tórax', 'hora': '17:45 – 18:30'},
      ],
    },
    {
      'titulo': '2º MÓDULO: CARDIOLOGÍA BÁSICA',
      'fecha': 'Sábado 29 de Marzo',
      'clases': [
        {'tema': 'Anatomía y fisiología cardiovascular 1', 'hora': '08:30 – 09:15'},
        {'tema': 'Anatomía y fisiología cardiovascular 2', 'hora': '09:15 – 10:00'},
        {'tema': 'Receso - Primer control teórico', 'hora': '10:00 – 10:30'},
        {'tema': 'Bases del ECG', 'hora': '10:30 – 11:15'},
        {'tema': 'Monitorización Hemodinámica Básica y Avanzada', 'hora': '11:15 – 12:00'},
        {'tema': 'Interacción cardiopulmonar', 'hora': '12:00 – 13:30'},
        {'tema': 'Interpretación básica de las arritmias', 'hora': '15:00 – 15:45'},
        {'tema': 'Cirugía cardíaca', 'hora': '15:45 – 16:30'},
        {'tema': 'Receso', 'hora': '16:30 – 17:00'},
        {'tema': 'Insuficiencia cardiaca', 'hora': '17:00 – 17:45'},
        {'tema': 'Herramientas para la evaluación de la función respiratoria', 'hora': '17:45 – 18:30'},
      ],
    },
    {
      'titulo': '3er MÓDULO: SHOCK',
      'fecha': 'Sábado 05 de Abril',
      'clases': [
        {'tema': 'Fisiopatología del Shock', 'hora': '08:30 – 09:15'},
        {'tema': 'Principios de tratamiento del Shock', 'hora': '09:15 - 10:00'},
        {'tema': 'SIRS, Sepsis y Shock Séptico', 'hora': '10:00- 10:45'},
        {'tema': 'Receso - Segundo control teórico', 'hora': '10:45 – 11:30'},
        {'tema': 'Cirugía vascular 1', 'hora': '11:30 - 12:15'},
        {'tema': 'Cirugía vascular 2', 'hora': '12:15 – 13:00'},
        {'tema': 'Sepsis de origen abdominal: Manejo Quirúrgico', 'hora': '15:00 – 15:45'},
        {'tema': 'Shock Cardiogénico', 'hora': '15:45 – 16:30'},
        {'tema': 'Soporte Extracorpóreo en el Shock Cardiogénico', 'hora': '15:30 – 16:15'},
        {'tema': 'Receso', 'hora': '16:15 – 16:30'},
        {'tema': 'RCP básica Adultos', 'hora': '16:30 – 17:15'},
        {'tema': 'RCP básica Pediátrica', 'hora': '17:15 – 18:00'},
        {'tema': 'Kinesiología en Cirugía Cardiotorácica', 'hora': '18:00 – 18:45'},
      ],
    },
    {
      'titulo': 'I TALLER VIRTUAL: IMAGINOLOGÍA DE TÓRAX',
      'fecha': 'Sábado 12 de Abril',
      'clases': [
        {'tema': 'Taller de imaginología de tórax', 'hora': '09:00 – 09:45'},
        {'tema': 'Ecografía en la evaluación Kinesiológica', 'hora': '09:45 – 10:30'},
        {'tema': 'Taller Ecografía', 'hora': '10:30 – 11:30'},
        {'tema': 'Receso', 'hora': '11:30 – 12:00'},
        {'tema': 'Evaluación de la función respiratoria (PIM, PEM y flujometría)', 'hora': '12:00 – 12:45'},
      ],
    },
    {
      'titulo': '4º MÓDULO: TERAPIA RESPIRATORIA',
      'fecha': 'Sábado 26 de Abril',
      'clases': [
        {'tema': 'Efectos hemodinámicos y metabólicos de la Kinesiología', 'hora': '08:30 – 09:15'},
        {'tema': 'Principios físicos de la terapia respiratoria', 'hora': '09:15 – 10:00'},
        {'tema': 'Aerosolterapia', 'hora': '10:00 – 11:00'},
        {'tema': 'Receso - Tercer control teórico', 'hora': '11:00 – 11:45'},
        {'tema': 'Oxigenoterapia', 'hora': '11:45 – 12:45'},
        {'tema': 'Actualización en CNAF', 'hora': '12:45 – 13:30'},
        {'tema': 'Introducción a la VM', 'hora': '15:00 – 15:45'},
        {'tema': 'Modos tradicionales y programación inicial', 'hora': '15:45 – 16:30'},
        {'tema': 'Receso', 'hora': '16:30 – 17:00'},
        {'tema': 'Análisis Gráfico de la Ventilación Mecánica', 'hora': '17:00 – 17:45'},
        {'tema': 'Mecánica Toracopulmonar', 'hora': '17:45 – 18:30'},
      ],
    },
    {
      'titulo': '5º MÓDULO: VENTILACIÓN MECÁNICA (VM)',
      'fecha': 'Sábado 03 de Mayo',
      'clases': [
        {'tema': 'Sedación en VM', 'hora': '08:30 – 09:15'},
        {'tema': 'Weaning de la ventilación mecánica', 'hora': '09:15 – 10:00'},
        {'tema': 'VM en falla cardiaca', 'hora': '10:00 – 10:45'},
        {'tema': 'Receso/Control', 'hora': '10:45 – 11:15'},
        {'tema': 'Decúbito prono en la falla respiratoria', 'hora': '11:15 – 12:00'},
        {'tema': 'Traqueostomías en el paciente crítico', 'hora': '12:00 – 12:45'},
        {'tema': 'Nuevos modos de VM', 'hora': '12:45 – 13:30'},
        {'tema': 'Asincronías en VM', 'hora': '15:00 – 15:45'},
        {'tema': 'Análisis Parámetros ventilatorios', 'hora': '15:45 - 16:30'},
        {'tema': 'Receso', 'hora': '16:30 – 17:00'},
        {'tema': 'Síndrome de Distrés Respiratorio Agudo (SDRA)', 'hora': '17:00 – 17:45'},
        {'tema': 'VM en el SDRA', 'hora': '17:45 – 18:30'},
      ],
    },
    {
      'titulo': '6º MÓDULO: VENTILACIÓN MECÁNICA II',
      'fecha': 'Sábado 10 de Mayo',
      'clases': [
        {'tema': 'Infecciones Asociadas a la Atención de Salud (IAAS)', 'hora': '08:30 – 09:30'},
        {'tema': 'Prevención de IAAS en UCI', 'hora': '09:30 – 10:30'},
        {'tema': 'Receso', 'hora': '10:30 – 11:15'},
        {'tema': 'Fisiología de la Ventilación Mecánica', 'hora': '11:15 – 11:45'},
        {'tema': 'Análisis Parámetros ventilatorios', 'hora': '11:45 – 12:30'},
        {'tema': 'Ventilación oscilatoria de alta frecuencia (VAFO)', 'hora': '12:30 – 13:15'},
        {'tema': 'APRV en el SDRA', 'hora': '15:00 – 15:45'},
        {'tema': 'Estrategias de evaluación del drive respiratorio en el paciente con Ventilación', 'hora': '15:45 – 16:15'},
        {'tema': 'Receso/Control', 'hora': '16:15 – 16:45'},
        {'tema': 'Indicadores en weaning difícil', 'hora': '16:45 - 17:30'},
        {'tema': 'Alternativas en la falla respiratoria catastrófica', 'hora': '17:30 – 18:15'},
      ],
    },
    {
      'titulo': 'II TALLER VIRTUAL: VENTILACIÓN MECÁNICA',
      'fecha': 'Sábado 17 de Mayo',
      'clases': [
        {'tema': 'VMI en la falla respiratoria aguda', 'hora': '08:30 - 09:15'},
        {'tema': 'Razonamiento clínico avanzado en la falla respiratoria', 'hora': '09:15 – 10:00'},
        {'tema': 'Evaluación de los modos asistidos', 'hora': '10:00 - 10:45'},
        {'tema': 'Mesa Redonda', 'hora': '10:45 – 11:15'},
        {'tema': 'Receso', 'hora': '11:15 – 12:00'},
        {'tema': 'Armado del ventilador', 'hora': '12:00 – 13:00'},
      ],
    },
    {
      'titulo': '7º MÓDULO: EVALUACIÓN KINESIOLÓGICA DEL PACIENTE CRÍTICO',
      'fecha': 'Sábado 24 de Mayo',
      'clases': [
        {'tema': 'Extracción y registro de datos', 'hora': '08:30 – 09:15'},
        {'tema': 'Exámenes de laboratorio relevantes para el kinesiólogo', 'hora': '09:15 – 10:00'},
        {'tema': 'Receso / Control', 'hora': '10:00– 10:45'},
        {'tema': 'Nutrición y kinesiología en el paciente crítico', 'hora': '10:45 – 11:30'},
        {'tema': 'Herramientas para la Evaluación Kinesiológica y su impacto en el desempeño profesional', 'hora': '11:30 – 12:15'},
        {'tema': 'Diagnóstico Kinesiológico y Plan en UPC', 'hora': '15:00 – 15:45'},
        {'tema': 'Herramientas para la evaluación funcional en el paciente crítico', 'hora': '15:45 – 16:30'},
        {'tema': 'Receso', 'hora': '16:30 – 17:00'},
        {'tema': 'Estadística clínica en kinesiología', 'hora': '17:00 – 17:45'},
        {'tema': 'Medicina Basada en Evidencia', 'hora': '17:45 – 18:30'},
      ],
    },
    {
      'titulo': '8º MÓDULO: PROCESO DE ATENCIÓN KINESIOLÓGICA',
      'fecha': 'Sábado 31 de Mayo',
      'clases': [
        {'tema': 'Kinesiología Respiratoria: Fisiología del clearance mucociliar', 'hora': '08:30 – 09:30'},
        {'tema': 'Kinesiología Respiratoria: CPT convencional e instrumental', 'hora': '09:30 – 10:15'},
        {'tema': 'Kinesiología Respiratoria en UCI', 'hora': '10:15 – 11:30'},
        {'tema': 'Receso', 'hora': '11:30 – 12:00'},
        {'tema': 'Proceso de atención kinésica en UPC', 'hora': '12:00 – 12:45'},
        {'tema': 'Evidencia Chilena en Kinesiología Intensiva', 'hora': '12:45 – 13:30'},
        {'tema': 'Trabajo en equipo', 'hora': '15:00 – 15:45'},
        {'tema': 'Rol del kinesiólogo al final de la vida', 'hora': '15:45 – 16:30'},
        {'tema': 'Receso', 'hora': '16:30 – 17:00'},
        {'tema': 'Aspectos médico-legales de la atención en salud', 'hora': '17:00 – 17:45'},
        {'tema': 'Apoyo Psicológico en Unidades de Paciente Crítico', 'hora': '17:45 – 18:30'},
      ],
    },
    {
      'titulo': '9º MÓDULO: VENTILACIÓN MECÁNICA NO INVASIVA',
      'fecha': 'Sábado 07 de Junio',
      'clases': [
        {'tema': 'Historia y evidencias en VMNI', 'hora': '08:30 – 09:15'},
        {'tema': 'Fisiología de la VMNI', 'hora': '09:15 – 10:00'},
        {'tema': 'Selección del paciente', 'hora': '10:00 – 10:45'},
        {'tema': 'Receso/Control', 'hora': '10:45 – 11:30'},
        {'tema': 'Gráfica de la VM', 'hora': '11:30 – 12:15'},
        {'tema': 'Complicaciones y monitorización del paciente en VMNI', 'hora': '12:15 – 13:00'},
        {'tema': 'Selección del ventilador mecánico y modos ventilatorios no invasivos', 'hora': '15:00 – 15:45'},
        {'tema': 'Interfaces, humidificación, oxígeno suplementario y broncodilatación en VMNI', 'hora': '15:45 – 16:30'},
        {'tema': 'Receso', 'hora': '16:30 – 17:00'},
        {'tema': 'Metodología, protocolo, criterios de éxito/fracaso en VMNI', 'hora': '17:00 – 17:45'},
        {'tema': 'Taller de VMNI: Caso clínico', 'hora': '17:45 – 18:30'},
      ],
    },
    {
      'titulo': '10º MÓDULO: INTENSIVO PEDIÁTRICO',
      'fecha': 'Sábado 14 de Junio',
      'clases': [
        {'tema': 'Anatomía y fisiología cardiopulmonar pediátrica', 'hora': '08:30 – 09:30'},
        {'tema': 'Radiología Pediátrica', 'hora': '09:30 – 10:15'},
        {'tema': 'Kinesiterapia respiratoria en paciente neonatal', 'hora': '10:15 – 11:00'},
        {'tema': 'Receso', 'hora': '11:00 – 11:30'},
        {'tema': 'Estimulación psicomotora en el paciente pediátrico', 'hora': '11:30 – 12:15'},
        {'tema': 'Fisiopatología de las alteraciones frecuentes en el paciente pediátrico', 'hora': '12:15 – 13:15'},
        {'tema': 'Receso', 'hora': '15:30 – 16:15'},
        {'tema': 'Kinesiterapia respiratoria pediátrica', 'hora': '16:15 – 17:00'},
        {'tema': 'Terapia Ventilatoria pediátrica', 'hora': '17:00 – 17:30'},
        {'tema': 'Ventilación mecánica pediátrica: Conceptos básicos', 'hora': '17:30 – 18:15'},
      ],
    },
    {
      'titulo': 'MÓDULO: NEUROINTENSIVO',
      'fecha': 'Sábado 21 de Junio',
      'clases': [
        {'tema': 'Monitorización invasiva de la PIC', 'hora': '08:30 – 09:30'},
        {'tema': 'Abordaje Kinésico del Paciente neurocrítico', 'hora': '09:30 – 10:15'},
        {'tema': 'Síndrome de Pares Bajos', 'hora': '10:15 – 11:00'},
        {'tema': 'Receso', 'hora': '11:00 – 11:30'},
        {'tema': 'Debilidad adquirida en la UCI – Da-UCI.', 'hora': '11:30 – 12:15'},
        {'tema': 'Evaluación Funcional en la UCI.', 'hora': '12:15 – 13:00'},
        {'tema': 'Movilización precoz', 'hora': '13:00 – 13:45'},
        {'tema': 'Bases neurofisiológicas para la movilización temprana', 'hora': '15:00 – 15:45'},
        {'tema': 'Evidencia de la Neuro-rehabilitación precoz', 'hora': '16:00 – 16:45'},
        {'tema': 'Café', 'hora': '16:45 – 17:00'},
        {'tema': 'Kinesiología en el paciente gran quemado', 'hora': '17:00 – 17:45'},
        {'tema': 'Kinesiología en el paciente politraumatizado', 'hora': '17:45 – 18:30'},
      ],
    },
    {
      'titulo': 'TALLERES PRESENCIALES',
      'fecha': 'Sábado 28 de Junio',
      'clases': [
        {'tema': 'Recepción y conformación de grupos', 'hora': '09:00 – 09:30'},
        {'tema': 'Primer taller', 'hora': '09:30 – 10:30'},
        {'tema': 'Segundo Taller', 'hora': '10:30 – 11:30'},
        {'tema': 'Debriefing Talleres 1 y 2', 'hora': '11:30 – 12:00'},
        {'tema': 'Tercer Taller', 'hora': '12:00 – 13:00'},
        {'tema': 'Cuarto Taller', 'hora': '13:00 – 14:00'},
        {'tema': 'Debriefing Talleres 3 y 4', 'hora': '14:00 – 14:30'},
        {'tema': 'Control', 'hora': '14:30 – 15:00'},
      ],
      'lugar': 'Universidad de las Américas, Campus Providencia',
      'horario': '09:00 – 15:30',
      'talleres': [
        'Vía aérea artificial, Oxigenoterapia convencional y Terapia de Ato Flujo',
        'RCP Básica, ventilación manual y uso de desfibrilador',
        'Dispositivos de monitorización hemodinámica',
        'Ventilación mecánica',
      ],
    },
    {
      'titulo': 'EXAMEN FINAL',
      'fecha': 'Sábado 05 de Julio',
      'clases': [
        {'tema': 'Revisión General', 'hora': '09:00 - 12:00'},
      ],
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Plan de Estudios',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: modulos.length,
          itemBuilder: (context, index) {
            final modulo = modulos[index];
            return ExpansionTile(
              title: Text(
                modulo['titulo']!,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                modulo['fecha']!,
                style: const TextStyle(fontSize: 14),
              ),
              children: [
                if (modulo.containsKey('lugar'))
                  ListTile(
                    title: Text(
                      'Lugar: ${modulo['lugar']}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                if (modulo.containsKey('horario'))
                  ListTile(
                    title: Text(
                      'Horario: ${modulo['horario']}',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ),
                ...modulo['clases'].map<Widget>((clase) {
                  return ListTile(
                    title: Text(
                      clase['tema']!,
                      style: const TextStyle(fontSize: 14),
                    ),
                    subtitle: Text(
                      clase['hora']!,
                      style: const TextStyle(fontSize: 12),
                    ),
                  );
                }).toList(),
                if (modulo.containsKey('talleres'))
                  ListTile(
                    title: const Text(
                      'Talleres:',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: modulo['talleres'].map<Widget>((taller) {
                        return Text(
                          taller,
                          style: const TextStyle(fontSize: 14),
                        );
                      }).toList(),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
