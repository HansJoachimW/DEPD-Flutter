import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        foregroundColor: Colors.grey,
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.teal,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text(
                "Hello World!",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "Hello World!",
                style: TextStyle(fontSize: 24),
              )
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Text(
                "Hello World!",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "Hello World!",
                style: TextStyle(fontSize: 24),
              )
            ])
          ],
        ),
      ),
    );
  }
}
