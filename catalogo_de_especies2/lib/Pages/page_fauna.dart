import 'package:flutter/material.dart';

class Fauna extends StatefulWidget {
  const Fauna({super.key});

  @override
  State<Fauna> createState() => _FaunaState();
}

class _FaunaState extends State<Fauna> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text(
          'Fauna',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xe552c084),
      ),
      body: Center(child: Text('Hola')),
    );
  }
}
