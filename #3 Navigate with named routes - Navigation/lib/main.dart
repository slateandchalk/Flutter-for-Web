import 'package:flutter_web/material.dart';
import 'package:demo_6/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto-Regular'
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}