import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Widget Practise",
      home: const MyApp(),
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Practise'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            width: 200,
            height: 500 ,

            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(10),
                  color: Colors.pink,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  color: Colors.teal,
                ),
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(10),
                  color: Colors.green,
                ),
                Container(
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(10),
                  color: Colors.brown,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Row with textspan
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Widget Practise'),
//         backgroundColor: Colors.black,
//       ),
//       body: Center(
//         child: Row(
//           children: [
//             Container(
//
//               height: 100,
//               width: 100,
//               alignment: Alignment.center,
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(10)),
//                 gradient: LinearGradient(colors: [Colors.black, Colors.grey]),
//                 shape: BoxShape.rectangle,
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 2,
//
//                     offset: Offset(3.3, 5),
//                     color: Colors.grey,
//                   ),
//                 ],
//               ),
//               padding: const EdgeInsets.all(10),
//               child: const Text(
//                 "I am a Box",
//                 style: MyTextStyle.customStyle,
//               ),
//             ),
//
//              const Text.rich(TextSpan(
//                  children : <TextSpan>[
//                    TextSpan(text: "Click Here To"),
//                    TextSpan(text: " LOGIN",style: TextStyle(color: Colors.blue , fontStyle: FontStyle.italic))
//                  ]
//              )
//
//
//
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
