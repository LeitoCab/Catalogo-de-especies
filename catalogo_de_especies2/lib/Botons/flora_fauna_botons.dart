import 'package:flutter/material.dart';

class flofaubotons extends StatelessWidget {
  final String texto;
  final String image;
  final presionar;
  const flofaubotons(
      {super.key, required this.texto, required this.image, this.presionar});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 62,
        width: 298,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => presionar,
                ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage(image),
                height: 62,
                width: 62,
              ),
              Text(
                texto,
                style: TextStyle(fontSize: 30),
              ),
              Icon(Icons.visibility)
            ],
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                topRight: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ))),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green)),
        ),
      )
    ]);
  }
}
