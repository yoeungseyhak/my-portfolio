import 'package:flutter/material.dart';

class ResumePage extends StatefulWidget {
  static const route = '/ResumePage';
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

class _ResumePageState extends State<ResumePage> {
  final _scrollCtrl = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ListView(controller: _scrollCtrl, children: []);
  }
}
