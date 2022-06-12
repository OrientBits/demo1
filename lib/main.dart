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
      debugShowCheckedModeBanner: false,
      title: "Hello Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello Demo"),
        ),
        body: const chapter4(),
        //floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.qr_code_scanner),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              // DrawerHeader(
              //     decoration: BoxDecoration(color: Colors.blueAccent),
              //     child: Text(
              //       "Hi, I am drawer",
              //       style: TextStyle(color: Colors.white),
              //     ),
              // ),
              UserAccountsDrawerHeader(
                accountName: Text("OrientBits"),
                accountEmail: Text("OrientBits@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://static.remove.bg/remove-bg-web/eb1bb48845c5007c3ec8d72ce7972fc8b76733b1/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg"),
                )
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Person"),
                subtitle: Text("Edit your profile"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Person"),
                subtitle: Text("Edit your profile"),
                trailing: Icon(Icons.edit),
              ),
              ListTile(
                leading: Icon(Icons.account_balance_wallet),
                title: Text("Person"),
                subtitle: Text("Edit your profile"),
                trailing: Icon(Icons.edit),
              )
            ],
          ),
        ),
      ),
    );
  }
}
