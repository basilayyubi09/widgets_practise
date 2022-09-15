import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:widgets_practise/Utils.dart';

import '../widgets/MyDrawer.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController myController = TextEditingController();
  var changeMeText = "Change Me";
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Practise'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(data[index]["title"]),
                      leading: Image.network(data[index]["url"] , height: 50 , width: 50),
                    ),
                  );
                },
                itemCount: data.length,
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeMeText = myController.text;
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
      drawer: const MyDrawer(),
    );
  }

  getData() async {
    var res = await http.get(Uri.parse(Cons.apiUrl));
    data = jsonDecode(res.body);
    setState(() {});
    print(res.body);
  }
}

//                Card(
//                   child: Column(
//                     children: [
//                       Image.asset(
//                         "assets/bg.jpg",
//                         fit: BoxFit.contain,
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Text(
//                         changeMeText,
//                         style: const TextStyle(fontSize: 20),
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: TextField(
//                           controller: myController,
//                           decoration: const InputDecoration(
//                               hintText: 'Enter Something Here',
//                               labelText: 'Name',
//                               border: OutlineInputBorder()),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
