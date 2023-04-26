import 'package:flutter/material.dart';

class Indigenas extends StatefulWidget {
  const Indigenas({super.key});

  @override
  State<Indigenas> createState() => _IndigenasState();
}

class _IndigenasState extends State<Indigenas> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(
          'Pueblos Indigenas',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xe552c084),
      ),
      body: Center(child: Text('Hola')),
    );
  }
}
