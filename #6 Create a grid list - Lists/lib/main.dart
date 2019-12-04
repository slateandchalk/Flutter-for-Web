import 'package:flutter_web/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto-Regular'
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landing Page'),
      ),
      body: Center(
        child: RaisedButton.icon(
          elevation: 4,
          label: Text('Home'),
          icon: Icon(Icons.arrow_forward),
          onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
          }
        )
      )
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
       child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
              offset: Offset(15.0, 15.0),
              blurRadius: 10,
            )
          ],
          ),
          padding: EdgeInsets.all(50),
          height: 700,
          width: 1000,
          child: Center(
            child: GridView.count(
              crossAxisCount: 6,
              children: List.generate(24, (index) {
                return Center(
                  child: Text(
                    'Item $index',
                  ),
                );
              }),
            ),
          )
        )
      )
    );
  }
}