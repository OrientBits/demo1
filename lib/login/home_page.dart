import 'package:demo1/chapter6.dart';
import 'package:flutter/material.dart';

import '../drawer.dart';
import 'Login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Hello Demo"),
      ),
      body: const Chapter6(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: const Icon(Icons.qr_code_scanner),
      ),
      drawer: const drawer(),
    );
  }
}
