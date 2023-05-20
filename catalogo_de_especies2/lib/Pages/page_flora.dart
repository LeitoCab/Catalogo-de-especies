import 'package:catalogo_de_especies2/Botons/flora_fauna_botons.dart';
import 'package:flutter/material.dart';

import '../Appbarinf.dart';

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
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        backgroundColor: const Color(0xe552c084),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.6,
                image: AssetImage("assets/Amazonia.jpg"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Image.asset(
              'assets/descarga.jpg',
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'FLORA',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Stack(children: [
              Column(
                children: <Widget>[
                  Column(
                    children: const [
                      flofaubotons(
                        image: "assets/arboles.jpg",
                        texto: "Arboles",
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      flofaubotons(
                          texto: "Palmeras", image: "assets/palmeras.png")
                    ],
                  )
                ],
              )
            ])
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomAppBar(
          web: "web.iiap.gob.pe",
          desarrollado: "Desarrollado por grupo de developers - IIAP"),
    );
  }
}
