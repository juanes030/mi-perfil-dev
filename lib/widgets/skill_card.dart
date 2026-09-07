import 'package:flutter/material.dart';

import '../models/skill.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({super.key, required this.skill});

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.code),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    skill.name,
                    style: Theme.of(context).textTheme.titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(skill.level),
              ],
            ),
            const SizedBox(height: 8),
            Text(skill.description),
            const SizedBox(height: 12),
            LinearProgressIndicator(value: skill.progress),
            const SizedBox(height: 6),
            Text(
              '${(skill.progress * 100).round()}%',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
