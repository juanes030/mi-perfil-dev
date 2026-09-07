import 'package:flutter/material.dart';

import '../models/developer.dart';
import '../widgets/skill_card.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key, required this.developer});

  final Developer developer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mis habilidades')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: developer.technologies.length,
        itemBuilder: (context, index) {
          final skill = developer.technologies[index];

          return SkillCard(skill: skill);
        },
      ),
    );
  }
}
