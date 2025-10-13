import 'package:flutter/material.dart';

class ProjectsPage extends StatefulWidget {
  static const route = '/ProjectsPage';
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Projects'));
  }
}
