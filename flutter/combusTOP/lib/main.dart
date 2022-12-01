import 'package:combus_top/widget_app.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CombusTOP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black38,
      ),
      home: Home(),
    );
  }
}

