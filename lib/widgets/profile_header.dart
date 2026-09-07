import 'package:flutter/material.dart';

import '../models/developer.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.developer});

  final Developer developer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(developer.imagePath),
        ),
        const SizedBox(height: 20),
        Text(
          developer.name,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6),
        Text(developer.role, style: Theme.of(context).textTheme.titleMedium),
      ],
    );
  }
}
