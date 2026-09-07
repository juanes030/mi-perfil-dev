import 'package:flutter/material.dart';
import 'package:mi_perfil_dev/models/skill.dart';

import '../models/developer.dart';
import '../widgets/about_section.dart';
import '../widgets/contact_info_card.dart';
import '../widgets/profile_header.dart';
import 'skills_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const Developer developer = Developer(
    name: 'Juan Esteban Alvarez',
    role: 'Flutter Developer',
    description:
        'Desarrollador de software enfocado en la creación de aplicaciones '
        'móviles con Flutter. Me interesa construir soluciones útiles, '
        'mantener un código limpio y seguir aprendiendo nuevas tecnologías.',
    location: 'Medellín, Colombia',
    email: 'tu-email@email.com',
    phone: '+57 300 000 0000',
    linkedin: 'linkedin.com/in/juan-esteban-alvarez-ruiz-811069203/',
    imagePath: 'assets/images/profile.jpg',
    technologies: [
      Skill(
        name: 'Flutter',
        description: 'Desarrollo de aplicaciones móviles multiplataforma.',
        level: 'Avanzado',
        progress: 0.9,
      ),
      Skill(
        name: 'Dart',
        description:
            'Lenguaje principal utilizado para desarrollar con Flutter.',
        level: 'Avanzado',
        progress: 0.9,
      ),
      Skill(
        name: 'Firebase',
        description: 'Backend y servicios para aplicaciones móviles.',
        level: 'Intermedio',
        progress: 0.75,
      ),
      Skill(
        name: 'Git',
        description: 'Control de versiones y colaboración en proyectos.',
        level: 'Intermedio',
        progress: 0.8,
      ),
    ],
  );

  final List<String> messages = [
    'Desarrollador apasionado por crear aplicaciones móviles con Flutter.',
    'Siempre aprendiendo y construyendo cosas nuevas.',
    'Me gusta convertir ideas en aplicaciones.',
  ];

  int messageIndex = 0;

  void changeMessage() {
    setState(() {
      messageIndex = (messageIndex + 1) % messages.length;
    });
  }

  void openSkillsScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SkillsScreen(developer: developer),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mi Perfil Dev'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 10),

            ProfileHeader(developer: developer),

            const SizedBox(height: 20),

            AboutSection(
              message: messages[messageIndex],
              description: developer.description,
              onChangeMessage: changeMessage,
            ),

            const SizedBox(height: 16),

            ContactInfoCard(developer: developer),

            const SizedBox(height: 20),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: openSkillsScreen,
                icon: const Icon(Icons.code),
                label: const Text('Ver mis habilidades'),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
