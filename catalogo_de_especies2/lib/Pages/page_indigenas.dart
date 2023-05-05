import 'package:flutter/material.dart';

class Indigenas extends StatefulWidget {
  const Indigenas({super.key});

  @override
  State<Indigenas> createState() => _IndigenasState();
}

class _IndigenasState extends State<Indigenas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pueblos Indigenas',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xe552c084),
      ),
      body: const Center(child: Text('Hola')),
    );
  }
}
