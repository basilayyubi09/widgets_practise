import 'dart:js';

import 'package:flutter/material.dart';
import 'package:widgets_practise/pages/HomePage.dart';
import 'package:widgets_practise/pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Widget Practise",
      home: const LoginPage(),
      routes: {
        "/myApp" : (context) =>  const MyApp()
      },
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
    ),
  );
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
