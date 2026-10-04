import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Spacer(),
        Text('texto basico'),
        Text('Texto basico', style: TextStyle(fontSize: 24)),
        Text(
          'Texto basico',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        Text(
          'Texto curvado y colores',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.red,
            backgroundColor: Color(0xFF00FF00),
          ),
        ),
        Text(
          'Texto con decoraciones',
          style: TextStyle(
            fontSize: 30,
            decoration: TextDecoration.underline,
            color: Colors.blue,
            decorationColor: Colors.red,
            decorationStyle:
                TextDecorationStyle.wavy, // Estilo de la línea de decoración
            decorationThickness: 2, // Ancho de la línea de decoración
          ),
        ),
        Text(
          'Texto con sombra',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            shadows: [
              Shadow(color: Colors.grey, offset: Offset(2, 2), blurRadius: 3),
            ],
          ),
        ),
        Text(
          'Texto con espaciado',
          style: TextStyle(letterSpacing: 5, fontSize: 20),
        ),
        Text(
          'Texto largo, Texto largo, Texto largo, Texto largo, Texto largo,Texto largo, Texto largo, Texto largo, Texto largo, Texto largo, Texto largo, Texto largo,Texto largo, Texto largo',
          style: TextStyle(fontSize: 20),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Spacer(),
      ],
    );
  }
}
