import 'package:flutter/material.dart';
import 'package:loginapp/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String username;
  late String password;

  TextStyle myStyle =
      const TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    final usernameField = TextField(
      onChanged: (val) {
        setState(() {
          username = val;
        });
      },
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        hintText: "Username",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final passwordField = TextField(
      onChanged: (val) {
        setState(() {
          password = val;
        });
      },
      obscureText: true,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        hintText: "Password",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
        ),
      ),
    );

    final myLoginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      child: MaterialButton(
        child: Text(
          "Login",
          style: TextStyle(color: Colors.amber.shade100, fontSize: 20),
        ),
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        onPressed: () {
          if (username == "Sulav" && password == "pass123") {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(
                  username,
                ),
              ),
            );
          } else {
            print("Login Failed");
          }
        },
      ),
      color: Colors.blue,
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.supervised_user_circle, size: 100),
                const SizedBox(height: 20),
                usernameField,
                const SizedBox(
                  height: 20,
                ),
                passwordField,
                const SizedBox(
                  height: 20,
                ),
                myLoginButton,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
