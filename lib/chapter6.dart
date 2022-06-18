import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Chapter6 extends StatefulWidget {
  const Chapter6({Key? key}) : super(key: key);

  @override
  State<Chapter6> createState() => _Chapter6State();
}

class _Chapter6State extends State<Chapter6> {
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data = null;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      leading: Image.network(data[index]["url"]),
                      subtitle: Text("ID: ${data[index]["id"]}"),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}
