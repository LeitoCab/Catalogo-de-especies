import 'package:catalogo_de_especies2/Appbarinf.dart';
import 'package:catalogo_de_especies2/Pages/page_flora.dart';
import 'package:flutter/material.dart';
import 'package:catalogo_de_especies2/Botons/home_botons.dart';
import 'package:catalogo_de_especies2/Pages/page_fauna.dart';
import 'package:catalogo_de_especies2/Pages/page_indigenas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'main.dart',
      routes: <String, WidgetBuilder>{
        'page_flora': (BuildContext context) => const Flora(),
        'page_fauna': (BuildContext context) => const Fauna(),
        'page_indigenas': (BuildContext context) => const Indigenas(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: const Color(0xe552c084),
          child: Column(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                margin: const EdgeInsets.only(top: 60.0, bottom: 30.0),
                child: Image.asset("assets/Logo.png"),
              ),
              const Text(
                "Catálogo de especies",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30.0),
                padding: const EdgeInsets.all(20.0),
                width: double.infinity,
                color: const Color(0x3300FF00),
                child: const Text(
                  "Flora",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/voluntariado.png", height: 24.0),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    'AMAZONIA',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        height: 1.2575,
                        color: Color(0xffffffff)),
                  ),
                  Text(
                    'GUIA ILUSTRADA DE NATURALEZA Y CULTURA',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 1.2575,
                        color: Color(0xffffffff)),
                  ),
                ]),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ],
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
            Expanded(
              child: Image.asset(
                'assets/descarga.jpg',
                width: double.infinity,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                'CATALOGO DE ESPECIES',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Stack(children: [
              Column(
                children: <Widget>[
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        homeboton(
                          imagen: 'assets/Flora.jpg',
                          texto: 'Flora',
                          presionar: Flora(),
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        homeboton(
                          imagen: 'assets/fauna.jpg',
                          texto: 'Fauna',
                          presionar: Fauna(),
                        )
                      ]),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Center(
                      child: homeboton(
                    imagen: 'assets/pueblos_indigenas.jpg',
                    texto: 'Pueblos Indigenas',
                    presionar: Indigenas(),
                  ))
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
