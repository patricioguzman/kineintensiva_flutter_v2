import 'package:flutter/material.dart';
import 'dart:async';

class CountdownSignup extends StatefulWidget {
const CountdownSignup({super.key});

@override
_CountdownSignupState createState() => _CountdownSignupState();
}

class _CountdownSignupState extends State {
Duration _remainingTime = const Duration(days: 10, hours: 0, minutes: 0, seconds: 0);

@override
void initState() {
super.initState();
Timer.periodic(const Duration(seconds: 1), (timer) {
if (mounted) {
setState(() {
if (_remainingTime.inSeconds > 0) {
_remainingTime = _remainingTime - const Duration(seconds: 1);
} else {
timer.cancel();
}
});
}
});
}

@override
Widget build(BuildContext context) {
return Column(
children: [
Container(
padding: const EdgeInsets.all(20),
decoration: BoxDecoration(
image: DecorationImage(
image: const AssetImage('assets/images/contador.jpg'),
fit: BoxFit.cover,
colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
),
),
child: Column(
children: [
const Text(
'ADQUIERA NUEVAS COMPETENCIAS Y CONOCIMIENTOS',
style: TextStyle(
fontSize: 24,
fontWeight: FontWeight.bold,
color: Colors.white,
),
textAlign: TextAlign.center,
),
const SizedBox(height: 5),
const Text(
'Inscríbase a un curso Certificado por el Colegio de Kinesiólogos de Chile',
style: TextStyle(color: Colors.white, fontSize: 16),
textAlign: TextAlign.center,
),
const SizedBox(height: 20),
_buildCountdownTimer(),
const SizedBox(height: 20),
_buildSignupForm(),
],
),
),
_buildInsightsSection(),
],
);
}

Widget _buildCountdownTimer() {
return Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
_buildTimeBox('${_remainingTime.inDays}', 'DAYS'),
_buildTimeBox('${_remainingTime.inHours % 24}', 'HOURS'),
_buildTimeBox('${_remainingTime.inMinutes % 60}', 'MINUTES'),
_buildTimeBox('${_remainingTime.inSeconds % 60}', 'SECONDS'),
],
);
}

Widget _buildTimeBox(String value, String unit) {
return Container(
margin: const EdgeInsets.symmetric(horizontal: 5),
padding: const EdgeInsets.all(15),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(5),
),
child: Column(
children: [
Text(value, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black)),
Text(unit, style: const TextStyle(fontSize: 14, color: Colors.black)),
],
),
);
}

Widget _buildSignupForm() {
return Container(
padding: const EdgeInsets.all(20),
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(10),
),
child: Column(
children: [
const Text(
'INSCRÍBETE AHORA',
style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
),
const SizedBox(height: 5),
const Text('Cupos Limitados', style: TextStyle(fontSize: 16, color: Colors.black54)),
const SizedBox(height: 15),
const TextField(
decoration: InputDecoration(
border: OutlineInputBorder(),
hintText: 'Email',
),
),
const SizedBox(height: 10),
const TextField(
decoration: InputDecoration(
border: OutlineInputBorder(),
hintText: 'Teléfono',
),
),
const SizedBox(height: 10),
ElevatedButton(
onPressed: () {},
style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFF57C00)),
child: const Padding(
padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
child: Text('ENVIAR', style: TextStyle(color: Colors.white)),
),
),
],
),
);
}

Widget _buildInsightsSection() {
return Padding(
padding: const EdgeInsets.all(20),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
const Text(
'Más Información',
style: TextStyle(
fontSize: 22,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 10),
_buildInsightItem('Certificación', 'Curso certificado por el Colegio de Kinesiólogos de Chile, miembro de la Confederación Mundial de Terapia Física (WCPT), con el patrocinio de la UDLA, U. de los Andes y la Sociedad de Medicina Crítica y Urgencias (RED INTENSIVA).', Icons.school),
_buildInsightItem('Formación Integral', 'Los Cursos de Kineintensiva no sólo entregan formación en materias técnicas específicas, si no que también aborda elementos transversales del desempeño profesional como aspectos legales, psicológicos y de gestión.', Icons.book),
_buildInsightItem('Costos asequibles', 'El Curso de Kinesiología Intensiva tiene la categoría académica (220 horas) de un Diplomado Universitario a un costo significativamente menor.', Icons.attach_money),
_buildInsightItem('Apoyo a la Docencia', 'Contamos con un sistema Moodle que permite contar con herramientas docentes adicionales a la actividad presencial, como: foros, videos, lectura complementaria, información académica, etc.', Icons.laptop),
_buildInsightItem('Convenios y descuentos', 'Los kinesiólogos Colegiados (por 1 año o más) tienen un 20% de descuento en el valor del Curso. Egresados de la Universidad de los Andes cuentan con un descuento del 25%, mientras que egresados UDLA y Socios de la Red Intensiva un 30%.', Icons.local_offer),
],
),
);
}

Widget _buildInsightItem(String title, String desc, IconData icon) {
return ListTile(
leading: Icon(icon, color: const Color(0xFFF57C00), size: 40),
title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
subtitle: Text(desc),
);
}
}

