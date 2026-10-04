import 'package:flutter/material.dart';

// stl -> stateles shortcut

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 202, 135, 135),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // vertical
        crossAxisAlignment: CrossAxisAlignment.center, // horizontal
        // mainAxisSize: MainAxisSize.max,
        children: [
          Text('Hola, soy sebas'),
          Text('Hello World!'),
          Text('Hello World!'),
          Text('Hello World!'),
        ],
      ),
    );
  }
}
