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
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
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
            Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/Amazonia.jpg',
                height: 600,
              ),
            ),
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
      bottomNavigationBar: const MyBottomAppBar(
          web: "web.iiap.gob.pe",
          desarrollado: "Desarrollado por grupo de developers - IIAP"),
    );
  }
}
