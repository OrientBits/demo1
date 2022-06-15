import 'package:flutter/material.dart';

class Chapter5 extends StatefulWidget {
  const Chapter5({Key? key}) : super(key: key);

  @override
  State<Chapter5> createState() => _Chapter5State();
}

class _Chapter5State extends State<Chapter5> {
  static TextEditingController textEditingController = TextEditingController();
  static String change_me_text = "Change me";


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Image.asset("assets/bg.jpg", fit: BoxFit.cover),
              const SizedBox(
                height: 20,
              ),
              Text(change_me_text, style: TextStyle(fontSize: 25)),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter something here...",
                    label: Text("Change me"),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 35,
                width: 150,
                child: GestureDetector(
                  child: Card(
                      elevation: 5,
                      color: Colors.blue[200],
                      child: Center(child: const Text("Click to Change"))),
                  onTap: (){
                    change_me_text = textEditingController.text;
                    setState((){});
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
