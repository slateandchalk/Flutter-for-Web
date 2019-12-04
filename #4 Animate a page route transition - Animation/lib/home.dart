import 'package:flutter_web/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            tooltip: 'Exit to Home',
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Text('data'),
      ),
    );
  }
}