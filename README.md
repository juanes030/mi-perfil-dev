# Mi Perfil Dev

Mini aplicación desarrollada en Flutter como parte de la **Fase 0 — Nivelación en Dart y Flutter** de la Ruta de Crecimiento de Pragma.

## Descripción

**Mi Perfil Dev** es una aplicación sencilla que presenta información sobre un desarrollador, sus habilidades y las tecnologías que utiliza.

El proyecto fue desarrollado desde cero con Flutter con el objetivo de practicar los fundamentos de Dart y Flutter, incluyendo widgets, navegación, modelos, listas, componentes reutilizables y manejo de estado local.

## Funcionalidades

* 👨‍💻 Información del desarrollador.
* 📍 Información de contacto y ubicación.
* 🛠️ Lista de habilidades y tecnologías.
* 📊 Nivel de conocimiento y progreso de cada habilidad.
* 📱 Navegación entre la pantalla principal y la pantalla de habilidades.
* 🔄 Cambio de mensaje mediante estado local.
* 🧩 Componentes reutilizables mediante widgets personalizados.
* 📂 Código organizado en diferentes carpetas.

## Tecnologías

* Flutter
* Dart

No se utilizan paquetes externos adicionales.

## Estructura del proyecto

```text
lib/
├── main.dart
├── models/
│   ├── developer.dart
│   └── skill.dart
├── screens/
│   ├── home_screen.dart
│   └── skills_screen.dart
└── widgets/
    ├── about_section.dart
    ├── contact_info_card.dart
    ├── profile_header.dart
    └── skill_card.dart

assets/
└── images/
    └── profile.jpg


Ejecución

Clonar el repositorio:
git clone https://github.com/juanes030/mi-perfil-dev.git
Ingresar al proyecto:

cd mi-perfil-dev

Instalar las dependencias:

flutter pub get

Ejecutar la aplicación:

flutter run

Objetivo del reto

Practicar los fundamentos de Dart y Flutter:

Sintaxis básica de Dart.
Variables, funciones y colecciones.
Clases y objetos.
Null safety.
Creación y composición de widgets.
StatelessWidget y StatefulWidget.
Uso de setState.
Manejo de estado local.
Navegación básica con Navigator.
Construcción de listas dinámicas.
Uso de modelos para representar información.
Creación de widgets reutilizables.
Organización básica de un proyecto Flutter.
Aprendizajes

Durante el desarrollo de esta aplicación se practicó la separación de responsabilidades entre pantallas, modelos y widgets, manteniendo una estructura sencilla y adecuada para el alcance del proyecto.

El manejo del estado se realizó utilizando las herramientas nativas de Flutter, sin incorporar librerías externas de gestión de estado.