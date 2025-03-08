import 'package:flutter/material.dart';
import 'dart:async';

class Testimonials extends StatefulWidget {
  const Testimonials({super.key});

  @override
  _TestimonialsState createState() => _TestimonialsState();
}

class _TestimonialsState extends State<Testimonials> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<Map<String, String>> testimonials = [
    {
      'name': 'Aylin Leticia Conejeros Mariángel',
      'position': 'Hospital Carlos Van Buren, Valparaíso',
      'rut': 'RUT: 17.439.511-k',
      'testimonial': 'Realicé el curso el año 2014, más bien como un desafío personal pues dentro de mi formación de pregrado no estuvo tan presente y además como una herramienta fuerte en el competitivo mundo laboral. Durante el avance del curso gracias al contenido y al nivel de los profesionales que imparten las clases, logras interiorizarte en la labor fundamental que tenemos como kinesiólogos en la unidades críticas en base a los conocimiento y las propias experiencias clínicas de los profesionales. Por otro lado, las horas prácticas que ofrece el curso permiten un acercamiento, el primero cómo fue en mi caso, al qué hacer en unidades críticas y a pacientes complejos. Todo esto me entregó una base firme para enfrentarme a cualquier tipo de paciente, con las herramientas y los conocimientos suficientes para una atención de calidad y sobre todo humana, base con la cual he podido desempeñarme en Unidades críticas de adultos, pediátricos y neonatal tanto el sistema público como privado.',
      'image': 'assets/images/testimonios/test1.jpg'
    },
    {
      'name': 'Klgo. Daniel Godoy Olave',
      'position': 'Hospital San Borja, Santiago',
      'rut': 'RUT: 17947519-7',
      'testimonial': 'Soy Kinesiólogo egresado el año 2012. Realicé el Curso Básico el 2014 y avanzado el 2016. Adquirí fuertes conocimientos en el manejo de pacientes críticos, pero las oportunidades laborales fueron esquivas durante un par de años, pero con paciencia y perseverancia ahora me encuentro trabajando en un importante centro clínico, donde he podido poner al servicio de los usuarios todos los conocimientos adquiridos.',
      'image': 'assets/images/testimonios/test2.jpg'
    },
    {
      'name': 'Klgo. Dante Gil Zenteno',
      'position': 'Equipo de Kinesiología Intensiva Clínica Las Condes',
      'rut': 'RUT: 15.696.212-0',
      'testimonial': 'Viajé desde Arica en el año 2012 para realizar la 4º versión del curso. Fue un curso exigente, con una plana docente de alto nivel y rigurosas pruebas y talleres. Las pasantías prácticas del curso son un plus que te otorga una mirada integral de lo aprendido en la teoría, y esto se agradece, ya que la realidad de enfrentar a un paciente estando solo, siempre exigirá de la experiencia adquirida. Con este curso conseguí mi primer trabajo en la UPC, un reemplazo que me dio la oportunidad de mostrar lo que había aprendido y donde finalmente fui contratado. Así pasé por varios centros clínicos hasta llegar a mi trabajo actual en la Unidad de Tratamiento Intensivo de Clínica Las Condes. Continué con la formación y estudié un Magíster, me certifiqué como Terapista Respiratorio y presenté un trabajo de investigación en congreso de Kine Intensiva de la SOCHIMI, en mi actual área de desarrollo que es la investigación en aerosolterapia. La convivencia con los colegas y docentes me permitió crear lazos profesionales que ha durado hasta el día de hoy. Sin duda, este curso fue la puerta de entrada al mundo de la Kinesiología intensiva que me permitió gestionar mis primeras oportunidades laborales.',
      'image': 'assets/images/testimonios/test3.jpg'
    },
    {
      'name': 'Camilo Valles Varela',
      'position': 'Reanimador SAMU Metropolitano',
      'rut': 'RUT: 16357225-7',
      'testimonial': 'Con título en mano no somos nada, pensé una vez que salí de la Universidad. A partir de ello y con ánimo de aprender, mejorar y buscar un camino, me interesé en el Curso de Kinesiología Intensiva, con la ilusión de llenar espacios de conocimiento vacíos que tenia en ese momento. Fue muy buena decisión, de lo simple a lo complejo, de lo básico a lo avanzado, de las curvas a los bucles entre mucha otras cosas más. Muy exigente, prueba todos los sábados, agotador durante varias semanas. Nacen amigos, contactos, historias que van enriqueciendo el aprendizaje. Llegaba la práctica en el HOSMIL y eso si que sonaba desafiante, pero nada que temer, muy buena experiencia, mejor el contacto. Nadie habría pensado que el profesor de la práctica me contactaría días después para iniciar un refuerzo de invierno y lo mejor que fue el inicio de mi desarrollo de 4 años en el área que me había planteado. Excelente curso.',
      'image': 'assets/images/testimonios/test4.jpg'
    },
    {
      'name': 'Klgo. Ricardo Arriagada Garrido',
      'position': 'Mg. C Docencia Universitaria',
      'rut': 'RUT: 15.519.331-k',
      'testimonial': 'El año 2010 llego a Santiago desde Concepción, buscando oportunidades de formación en el área de la kinesiología cardiorrespiratoria. En ese camino me encuentro con el 3er curso de formación en kinesiología intensiva. Curso que ha destacado siempre, por poseer un cuerpo docente de excelencia y por entregar una instancia práctica de formación dentro de su malla curricular. Debo agregar que en este curso además de recibir grandes conocimientos, conocí a grandes profesionales y mejores personas, con los que hasta hoy en día comparto experiencias en pos de colaborar en el crecimiento de la Kinesiología.',
      'image': 'assets/images/testimonios/test5.jpg'
    },
    {
      'name': 'Andro Marinkovic Muñoz',
      'position': 'Emergencia Adultos Hospital Sotero del Rio',
      'rut': 'RUT: 16.357.750-k',
      'testimonial': 'Cuando egrese de la Universidad el año 2010 y comencé a buscar trabajo, sabía que mi formación de pregrado tenía grandes vacíos en el área de intensivo y terapia ventilatoria. Realizar el 3er Curso de Kinesiología Intensiva me dio conocimientos y herramientas básicas necesarias para encontrar mi primer trabajo en una UPC, donde pude desarrollar mi profesión en lo que realmente quería. Además me permitió conocer docentes de excelencia que guiaron mi formación y me inculcaron compromiso, dedicación y empatía con mis pacientes. Sin duda, lo recomiendo.',
      'image': 'assets/images/testimonios/test6.jpg'
    },
    {
      'name': 'Víctor Armando González Campos',
      'position': 'Hospital Talagante',
      'rut': 'RUT: 16.001.210-2',
      'testimonial': 'La extensión del curso de Kineintensiva al Curso Avanzado sin duda ha sido una excelente iniciativa por parte del Colegio de Kinesiólogos para la formación continua y de calidad de los profesionales, permite actualizarse en la contingencia de la kinesiología intensiva y no intensiva. Por otro lado, cabe destacar que su modalidad presencial y continua permiten una mayor fluidez en el aprendizaje, mantenerse informado hoy en la actualidad es clave y el Curso Avanzando lo consigue a cabalidad.',
      'image': 'assets/images/testimonios/test7.jpg'
    },
    {
      'name': 'Sergio Israel Díaz San Martín',
      'position': 'Hospital Sotero del Río',
      'rut': 'RUT: 16.353.357-K',
      'testimonial': 'Desde que llegué a Santiago proveniente de Punta Arenas fue muy difícil entrar a competir con el resto en el campo laboral. Este Curso entrega herramientas fundamentales para que la competencia sea más justa, convirtiéndose en uno de los pilares principales que he adquirido en mi vida profesional, lo que provocó una apertura de oportunidades laborales. Destaco primero el nivel docente que es de lo más alto a nivel nacional, eso te motiva a ver con otros ojos la Kinesiología intensiva. Segundo, el abanico de información te permite ir definiendo los caminos con más claridad y tercero, la gracia de que sea presencial permite desenvolverse con mayor libertad a la hora de la práctica clínica, una vital herramienta de conocimiento el cual es la puerta de entrada a esto tan bonito que es la Kinesiología intensiva.',
      'image': 'assets/images/testimonios/test8.jpg'
    },
    {
      'name': 'Klgo. Nelson Barra Garcés',
      'position': 'UPC Clínica Indisa/ UPC Hospital Clínico de la Fuerza Aérea',
      'rut': 'RUT: 18.835.584-6',
      'testimonial': 'Tomé la decisión de realizar el Curso de Kinesiología Intensiva por dos razones: Primero, deseaba aumentar mis expectativas laborales en un mundo donde las oportunidades de trabajo escasean. Segundo, necesitaba ampliar mis conocimientos específicos en el área asistencial hospitalaria. Al momento de comenzar con las clases pude comprobar la alta calidad de los profesionales que imparten la teoría, profesionales con amplio conocimiento y experiencia, dispuestos a resolver dudas tanto dentro como fuera del horario de clases. La importancia de las horas prácticas es crucial para la aplicación del conocimiento adquirido durante las horas teóricas y me ayudó a pararme con confianza en un ambiente crítico. El curso de kinesiología intensiva me entregó las herramientas para enfrentar de buena manera unidades de baja complejidad hasta unidades de paciente crítico, aportando para mi desarrollo profesional un fundamento teórico y práctico, basada en una atención de calidad, centrada en el usuario y enfocada en un proceso de atención kinésico, sistemático e integral.',
      'image': 'assets/images/testimonios/test9.jpg'
    },
    {
      'name': 'Bladimir Fuentes Escarate',
      'position': 'UPC Félix Bulnes',
      'rut': 'RUT: 17.028.269-8',
      'testimonial': 'El curso entrega conocimientos teóricos y prácticos esenciales para una UPC. La pasantía final permite aplicar lo aprendido y destaca por la calidad de sus docentes. Si bien ningún curso asegura un puesto laboral, este brinda herramientas clave para el desempeño en unidades críticas.',
      'image': 'assets/images/testimonios/test10.jpg'
    }
  ];

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < testimonials.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Testimonios',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 900, // Increased height from dynamic to 900
            child: PageView.builder(
              controller: _pageController,
              itemCount: testimonials.length,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemBuilder: (context, index) {
                return _buildTestimonialItem(testimonials[index]);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(testimonials.length, (index) {
              return GestureDetector(
                onTap: () {
                  _pageController.jumpToPage(index);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index ? const Color(0xFFF57C00) : Colors.grey,
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  double _calculateHeight() {
    final currentTestimonial = testimonials[_currentPage];
    final textLength = currentTestimonial['testimonial']?.length ?? 0;
    return textLength > 500 ? 825 : 500;
  }

  Widget _buildTestimonialItem(Map<String, String> testimonial) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Added mainAxisSize
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (testimonial.containsKey('image'))
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage(testimonial['image']!),
                  radius: 90, // Increased size
                ),
              ),
            const SizedBox(height: 10),
            Text(
              testimonial['name']!,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (testimonial.containsKey('position'))
              Text(
                testimonial['position']!,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            if (testimonial.containsKey('rut'))
              Text(
                testimonial['rut']!,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            const SizedBox(height: 10),
            SingleChildScrollView( // Added SingleChildScrollView
              child: Text(
                testimonial['testimonial']!,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}