import 'package:flutter/material.dart';

import '../Appbarinf.dart';
import '../Botons/flora_fauna_botons.dart';

class Fauna extends StatefulWidget {
  const Fauna({super.key});

  @override
  State<Fauna> createState() => _FaunaState();
}

class _FaunaState extends State<Fauna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Fauna',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
        backgroundColor: const Color(0xe552c084),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/descarga.jpg',
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: Text(
              'FAUNA',
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
            Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/Amazonia.jpg',
                height: 600,
              ),
            ),
            Column(
              children: <Widget>[
                Column(
                  children: const [
                    flofaubotons(
                      image: "assets/aves.png",
                      texto: "Aves",
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    flofaubotons(
                      image: "assets/mamiferos.png",
                      texto: "Mamiferos",
                    ),
                    SizedBox(height: 8.0),
                    flofaubotons(
                      image: "assets/reptiles.jpg",
                      texto: "Reptiles",
                    ),
                    SizedBox(height: 8.0),
                    flofaubotons(
                      image: "assets/anfibios.png",
                      texto: "Anfibios",
                    ),
                    SizedBox(height: 8.0),
                    flofaubotons(
                      image: "assets/peces.jpg",
                      texto: "Peces",
                    ),
                    SizedBox(height: 8.0),
                    flofaubotons(
                      image: "assets/insectos.jpg",
                      texto: "Insectos",
                    )
                  ],
                )
              ],
            )
          ])
        ],
      ),
      bottomNavigationBar: const MyBottomAppBar(
          web: "web.iiap.gob.pe",
          desarrollado: "Desarrollado por grupo de developers - IIAP"),
    );
  }
}
