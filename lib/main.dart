import 'package:demo1/chapter4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Hello Demo",
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Hello Demo"),
          ),
          body: const chapter4()
        )
    );
  }
}
