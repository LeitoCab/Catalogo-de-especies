import 'package:flutter/material.dart';

class MyBottomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String web;
  final String desarrollado;

  const MyBottomAppBar(
      {super.key, required this.web, required this.desarrollado});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: preferredSize.height,
        color: const Color(0xe552c084),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  web,
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff)),
                ),
                Text(
                  desarrollado,
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffffffff)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
