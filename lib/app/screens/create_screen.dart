import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/menu_components.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CreateScreen> createState() => _MyCreateScreenState();
}

class _MyCreateScreenState extends State<CreateScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
      ),

      drawer:
      MenuComponent(context),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Edit',
            ),
          ],
        ),
      ),
    );
  }
}