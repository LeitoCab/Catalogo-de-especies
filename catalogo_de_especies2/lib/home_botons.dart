import 'package:flutter/material.dart';

class homeboton extends StatelessWidget {
  final presionar;
  final String texto;
  final String imagen;
  const homeboton(
      {super.key, this.presionar, required this.texto, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 184.0,
        width: 140.0,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagen),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Positioned(
              child: ElevatedButton(
            child: Center(
              child: Text(
                texto,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 35, shadows: [
                  Shadow(
                      blurRadius: 5.0,
                      color: Colors.black,
                      offset: Offset(0, 0))
                ]),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => presionar,
                  ));
            },
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0))),
                side: MaterialStateProperty.all(
                    BorderSide(width: 3.0, color: Colors.black)),
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Colors.transparent)),
          )),
        ));
  }
}
