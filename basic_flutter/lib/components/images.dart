import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Imagenes en la red
        Image.network(
          "https://avatars.githubusercontent.com/u/63753219?v=4",
          height: 300,
        ),
        //Gif
        Image.network(
          "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
        ),
        Image.asset("assets/images/flutter-image.png"),
      ],
    );
  }
}
