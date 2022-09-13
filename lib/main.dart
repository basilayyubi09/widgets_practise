import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Widget Practise",
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome App'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.green[100],
        child: const Center(
          child: Text(
            "Hi Flutter",
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
