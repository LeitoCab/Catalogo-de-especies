import 'package:flutter/material.dart';

class Flora extends StatefulWidget {
  const Flora({super.key});

  @override
  State<Flora> createState() => _FloraState();
}

class _FloraState extends State<Flora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flora',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xe552c084),
      ),
      body: const Center(child: Text('Hola')),
    );
  }
}
