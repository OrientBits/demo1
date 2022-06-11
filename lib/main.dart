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
          body: Center(
            child: Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10,
                        offset: Offset(2, 5))
                  ],
                  //shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.indigoAccent],
                  )),
              child: const Text(
                "I'm a box",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
            ),
          ),
        ));
  }
}
