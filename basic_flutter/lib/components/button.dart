import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ElevatedButton(
          onPressed: () {},
          child: Text("Soy un boton :D"),
          onLongPress: () {
            print("Pulsadoooooooo!");
          },
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.red),
          ),
        ),

        OutlinedButton(onPressed: null, child: Text("Outlined")),
        TextButton(onPressed: null, child: Text("Textbutton")),
        FloatingActionButton(
          onPressed: () {
            print("Siii");
          },
          child: Icon(Icons.add),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
        IconButton(onPressed: null, icon: Icon(Icons.heart_broken)),
        Spacer(),
      ],
    );
  }
}
