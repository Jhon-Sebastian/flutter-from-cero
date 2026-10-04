// import 'package:basic_flutter/layouts/column.dart';
// import 'package:basic_flutter/components/button.dart';
import 'package:basic_flutter/components/images.dart';
// import 'package:basic_flutter/components/text_field.dart';
// import 'package:basic_flutter/components/text.dart';
// import 'package:basic_flutter/layouts/row.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Barra blanca es la tool bar
        appBar: AppBar(
          title: Text("Mi Supper App"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Colors.red,
            ),
          ],
        ),
        backgroundColor: Colors.amber,
        body: ImageExample(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red,
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
