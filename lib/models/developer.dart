import 'skill.dart';

class Developer {
  final String name;
  final String role;
  final String description;
  final String location;
  final String email;
  final String phone;
  final String linkedin;
  final String imagePath;
  final List<Skill> technologies;

  const Developer({
    required this.name,
    required this.role,
    required this.description,
    required this.location,
    required this.email,
    required this.phone,
    required this.linkedin,
    required this.imagePath,
    required this.technologies,
  });
}
