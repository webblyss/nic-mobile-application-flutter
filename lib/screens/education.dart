import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  List items = [
    "About policy",
    "Terms and agreements",
    "Refund",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insurance Education'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: ((context, index) {
        return Card(
          elevation: 4.0,
          child: ListTile(
            onTap: () {},
            title: Text(items[index]),
          ),
        );
      })),
    );
  }
}
