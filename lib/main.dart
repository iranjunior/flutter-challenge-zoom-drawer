import 'package:flutter/material.dart';
import 'package:zoom_drawer/page/page.dart';

void main() {
  runApp(EntryApp());
}

class EntryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoom Drawer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
