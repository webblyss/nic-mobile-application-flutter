import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insurance Education'),
        centerTitle: true,
      ),
      body: ListView.builder(itemBuilder: ((context, index) {
        return ListTile(
          onTap: () {},
          
        );
      })),
    );
  }
}
