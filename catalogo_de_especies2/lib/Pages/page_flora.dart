
import 'package:flutter/material.dart';

class Flora extends StatefulWidget {
  const Flora({super.key});

  @override
  State<Flora> createState() => _FloraState();
}

class _FloraState extends State<Flora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(
          'Flora',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xe552c084),
      ),
      body: Center(child: Text('Hola')),
    );
  }
}
