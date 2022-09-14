import 'package:flutter/material.dart';

import 'Utils.dart';

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
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text('Basil Ayyubi'),
              accountEmail: const Text('basilayyubi09@gmail.com'),
              currentAccountPicture:
                  CircleAvatar(backgroundImage: NetworkImage(Cons.imageUrl),),
            ),

            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              subtitle: Text('Personal'),
              trailing: Icon(Icons.edit),
            ),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('basil@gmail.com'),
              trailing: Icon(Icons.send),
            )
          ],
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
