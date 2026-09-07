import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    super.key,
    required this.message,
    required this.description,
    required this.onChangeMessage,
  });

  final String message;
  final String description;
  final VoidCallback onChangeMessage;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sobre mí',
              style: Theme.of(context).textTheme.titleLarge
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Text(message, style: Theme.of(context).textTheme.bodyLarge),
            const SizedBox(height: 12),
            Text(description),
            const SizedBox(height: 12),
            OutlinedButton.icon(
              onPressed: onChangeMessage,
              icon: const Icon(Icons.refresh),
              label: const Text('Cambiar mensaje'),
            ),
          ],
        ),
      ),
    );
  }
}
