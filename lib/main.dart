import 'package:demo1/login/Login.dart';
import 'package:demo1/login/home_page.dart';
import 'package:demo1/utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Hello Demo",
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Constants.prefs?.getBool("loggedIn") == true
        ? const HomePage()
        : const LoginPage(),
    routes: {
      "/login": (context) => const LoginPage(),
      "/home": (context) => const HomePage(),
    },
  ));
}
