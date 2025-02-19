KineIntensiva Flutter Web

📌 Descripción

Este es un proyecto desarrollado en Flutter Web para la plataforma KineIntensiva, diseñado para ofrecer información y facilitar la inscripción en un curso de kinesiología intensiva. Implementa un diseño moderno, intuitivo y responsivo, asegurando una experiencia óptima tanto en dispositivos móviles como en escritorio.

🚀 Características Principales

✅ Diseño Responsivo con Material 3 y ThemeData personalizado.
✅ Estructura Modular con componentes en /widgets.
✅ Menú de Navegación con desplazamiento automático a secciones.
✅ Carrusel con transiciones suaves en la página principal.
✅ Cuenta regresiva hasta el cierre de inscripciones.
✅ Formulario de inscripción con validación de email y teléfono.
✅ Testimonios dinámicos con opiniones de estudiantes.
✅ Sección de Blog con artículos destacados.
✅ Formulario de Suscripción a Noticias.
✅ Footer con enlaces a términos y políticas.

📂 Estructura del Proyecto

kineintensiva_flutter/
│-- lib/
│   ├── main.dart (Punto de entrada de la aplicación)
│   ├── widgets/
│   │   ├── hero_section.dart
│   │   ├── why_choose_us.dart
│   │   ├── countdown_signup.dart
│   │   ├── testimonials.dart
│   │   ├── blog_section.dart
│   │   ├── subscription_section.dart
│   │   ├── contact_section.dart
│   │   ├── footer.dart
│-- assets/
│   ├── fonts/
│   ├── images/
│-- pubspec.yaml (Dependencias y configuración del proyecto)

🛠️ Instalación y Configuración

1️⃣ Clonar el repositorio

git clone https://github.com/tuusuario/kineintensiva_flutter.git
cd kineintensiva_flutter

2️⃣ Configurar Flutter Web

Si el soporte web no está habilitado, ejecuta:

flutter create .

3️⃣ Instalar dependencias

flutter pub get

4️⃣ Ejecutar el proyecto

Para correr la aplicación en el navegador, usa:

flutter run -d chrome

📜 Dependencias Utilizadas

Flutter con soporte web

Material 3 para UI moderna

Cupertino Icons para íconos adicionales

⚡ Solución de Problemas

🔹 Si los enlaces del menú no funcionan, asegúrate de que los GlobalKey están correctamente pasados a los widgets.
🔹 Si Flutter Web no está habilitado, corre flutter create ..
🔹 Si hay errores en imágenes, revisa que pubspec.yaml tenga bien configuradas las assets/.

📬 Contacto

📧 Email: info@kineintensiva.cl
🌎 Web: kineintensiva.cl
📌 Desarrollado con ❤️ en Flutter.
