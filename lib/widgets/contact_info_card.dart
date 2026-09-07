import 'package:flutter/material.dart';

import '../models/developer.dart';

class ContactInfoCard extends StatelessWidget {
  const ContactInfoCard({super.key, required this.developer});

  final Developer developer;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.location_on_outlined),
            title: const Text('Ubicación'),
            subtitle: Text(developer.location),
          ),
          ListTile(
            leading: const Icon(Icons.email_outlined),
            title: const Text('Email'),
            subtitle: Text(developer.email),
          ),
          ListTile(
            leading: const Icon(Icons.phone_outlined),
            title: const Text('Teléfono'),
            subtitle: Text(developer.phone),
          ),
          ListTile(
            leading: const Icon(Icons.link),
            title: const Text('LinkedIn'),
            subtitle: Text(developer.linkedin),
          ),
        ],
      ),
    );
  }
}
