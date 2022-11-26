import 'package:flutter/material.dart';

import '../screens/create_screen.dart';
import '../screens/detail_screen.dart';
import '../screens/edit_screen.dart';
import '../screens/home_screen.dart';

Widget MenuComponent(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Menu'),
        ),
        ListTile(
          title: const Text('HOME'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'HOME')));
          },
        ),
        ListTile(
          title: const Text('CREATE'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreateScreen(title: 'CREATE')));
          },
        ),
        ListTile(
          title: const Text('DETAIL'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(title: 'DETAIL')));
          },
        ),
        ListTile(
          title: const Text('EDIT'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EditScreen(title: 'EDIT')));
          },
        ),
      ],
    ),
  );
}
