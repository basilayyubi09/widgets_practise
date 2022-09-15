import 'package:flutter/material.dart';

import '../widgets/MyDrawer.dart';
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController myController = TextEditingController();
  var changeMeText = "Change Me";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Widget Practise'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: [
                Image.asset(
                  "assets/bg.jpg",
                  fit: BoxFit.contain,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  changeMeText,
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    controller: myController,
                    decoration: const InputDecoration(
                        hintText: 'Enter Something Here',
                        labelText: 'Name',
                        border: OutlineInputBorder()),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeMeText = myController.text;
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
      drawer:const MyDrawer(),
    );
  }
}