import 'package:flutter/material.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto'
      ),
      home: MyHomePage(title: 'Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('Home Page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Slate & Chalk'),
              accountEmail: Text('khanteci7@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                    backgroundImage: AssetImage('images/logo.jpg'),
                  ),
                ),
              ),
            ListTile(
              title: Text('Nav 1'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => nav_first()));
              },
            ),
            ListTile(
              title: Text('Nav 2'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => nav_second()));
              },
            ),
            ListTile(
              title: Text('Nav 3'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => nav_third()));
              },
            ),
          ],
        ),
      ),
    );
  }
}