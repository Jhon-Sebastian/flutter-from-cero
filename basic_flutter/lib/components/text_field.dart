import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        children: [
          SizedBox(height: 60),
          TextField(),
          TextField(),
          TextField(
            decoration: InputDecoration(hintText: 'Introduce tu email normal'),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Este ya es otro texto con outline',
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Introduce tu contraseña",
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
          TextField(
            maxLines: 1,
            maxLength: 10,
            decoration: InputDecoration(
              hintText: 'Introduce tu contraseña',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
