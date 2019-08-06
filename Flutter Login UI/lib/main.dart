import 'package:flutter/material.dart';
import 'login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MTU Healthcare Application',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gochi'),
      home: Login(),
    );
  }
}