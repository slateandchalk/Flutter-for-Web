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
        actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.add_alert),
          tooltip: 'Show Snackbar',
          onPressed: () {
           
          },
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Next page',
          onPressed: () {
           
          },
        ),
        PopupMenuButton<String>(
              child: CircleAvatar(
                child: ClipOval(
                  child: Image.asset('images/logo.jpg',
                  ),
                ),
              ),
          onSelected: choiseAction,
          itemBuilder: (BuildContext context){
            return Constants.choices.map((String choice){
              return PopupMenuItem<String>(
                value: choice,
                child: Text(choice),
              );
            }).toList();
          },
        ),
        SizedBox(width: 10)
      ],
      ),
      body: Center(
        child: Text('data'),
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
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => nav_first()));
              },
            ),
             ListTile(
              title: Text('Nav 2'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => nav_second()));
              },
            ),
             ListTile(
              title: Text('Nav 3'),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => nav_third()));
              },
            )
          ],
        ),
      ),
    );
  }

  void choiseAction(String choice){
    if(choice == Constants.Nav1){
      Navigator.push(context, MaterialPageRoute(builder: (context) => nav_first()));
    } else if(choice == Constants.Nav2){
      Navigator.push(context, MaterialPageRoute(builder: (context) => nav_second()));
    } else if(choice == Constants.Nav3){
      Navigator.push(context, MaterialPageRoute(builder: (context) => nav_third()));
    }
  }
}

class Constants {
  static const String Nav1 = 'Nav1';
  static const String Nav2 = 'Nav2';
  static const String Nav3 = 'Nav3';

  static const List<String> choices = <String>[
    Nav1,
    Nav2,
    Nav3,
  ];
}