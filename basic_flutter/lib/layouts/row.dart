import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  const RowExample({super.key});

  // command + . --> Ayudas para envolver el widget con otro widget

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.only(top: 86),
      child: SizedBox(
        // height: double.infinity,
        child: const Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Hello World!'),
            Expanded(child: Text('Hello World!')),
            Text('Hello World!'),
          ],
        ),
      ),
    );
  }
}
