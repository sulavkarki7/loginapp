import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  const HomeScreen(this.username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        title: const Text("Home Page"),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              "Welcome $username",
              style: const TextStyle(
                  fontSize: 40,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Icon(
            Icons.celebration_rounded,
            size: 50,
            color: Colors.green.shade500,
          ),
          const Icon(
            Icons.celebration_sharp,
            size: 50,
            color: Color.fromARGB(255, 87, 76, 175),
          )
        ],
      ),
    );
  }
}
