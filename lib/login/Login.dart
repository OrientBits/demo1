import 'package:demo1/bg_image.dart';
import 'package:demo1/login/home_page.dart';
import 'package:demo1/utils/Constants.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BgImage(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Card(
                  color: Colors.white.withOpacity(0.8),
                  elevation: 5,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Form(
                            child: Column(
                          children: const [
                            TextField(
                              decoration: InputDecoration(
                                hintText: "Enter Username",
                                labelText: "UserName",
                              ),
                            ),
                            SizedBox(height: 20),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: "Enter Username",
                                labelText: "UserName",
                              ),
                            )
                          ],
                        )),
                      ),
                      const SizedBox(height: 20),
                      RaisedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const HomePage()));
                          Constants.prefs?.setBool("loggedIn", true);

                          Navigator.pushReplacementNamed(context, "/home");
                        },
                        color: Colors.blue,
                        textColor: Colors.white,
                        child: const Text("Sign In"),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
