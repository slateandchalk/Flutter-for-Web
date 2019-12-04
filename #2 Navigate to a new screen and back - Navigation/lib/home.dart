import 'package:flutter_web/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            tooltip: 'Exit',
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Center(
        child: Text('data'),
      )
    );
  }
}