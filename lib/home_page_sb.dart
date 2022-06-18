import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:demo1/utils/Constants.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;

class HomePageSB extends StatefulWidget {
  @override
  State<HomePageSB> createState() => _HomePageSBState();
}

class _HomePageSBState extends State<HomePageSB> {


  Stream<List<String>> getSteamData(){
    var data = Stream<List<String>>.fromIterable(
        [List<String>.generate(20, (index) => "Item ${++index}")]);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Constants.prefs?.setBool("loggedIn", false);
                Navigator.pushReplacementNamed(context, "/login");
              },
              icon: const Icon(Icons.exit_to_app))
        ],
        title: const Text("Hello Demo"),
      ),
      body: StreamBuilder(
          stream: getSteamData(),
          builder: (BuildContext ctx, AsyncSnapshot snapshot) =>
          snapshot.hasData
              ? ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, index) => Card(
              margin: const EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 5),
              child: InkWell(
                onTap: (){
                  print("Tapped");
                },
                child: ListTile(
                  contentPadding: const EdgeInsets.all(10),
                  title: Text(snapshot.data![index]),
                ),
              ),
            ),
          )
              : const Center(
            child: CircularProgressIndicator(),
          )),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.qr_code_scanner),
      ),
      drawer: const drawer(),
    );
  }
}
