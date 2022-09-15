import 'package:flutter/material.dart';

import '../Utils.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: const Text('Basil Ayyubi'),
            accountEmail: const Text('basilayyubi09@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(Cons.imageUrl),
            ),
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
    );
  }
}
