import 'package:catalogo_de_especies2/botones/boton_flora.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'boton_flora',
      routes: <String, WidgetBuilder>{
        'main': (BuildContext context) => const Flora(),
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
            children: [
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
              Expanded(
                child: Image.asset(
                  'assets/image 1.jpg',
                  width: 40.0,
                  height: 40.0,
                ),
              )
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          backgroundColor: Color(0xe552c084),
        ),
        body: Column(
          children: [
            Image.asset(
              'assets/descarga.jpg',
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'CATALOGO DE ESPECIES',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(children: [
              Opacity(
                opacity: 0.5,
                child: Image.asset(
                  'assets/Amazonia.jpg',
                ),
              ),
              Container(
                  height: 184.0,
                  width: 140.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Flora.jpg'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Positioned(
                        top: 50.0,
                        left: 30.0,
                        child: ElevatedButton(
                          child: Text('Boton'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Flora(),
                                ));
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15.0))),
                              side: MaterialStateProperty.all(
                                  BorderSide(width: 3.0, color: Colors.black)),
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.transparent)),
                        )),
                  ))
            ])
          ],
        ));
  }
}
