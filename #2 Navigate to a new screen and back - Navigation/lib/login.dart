import 'package:demo_6/home.dart';
import 'package:flutter_web/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: RaisedButton.icon(
          color: Colors.blue,
          textColor: Colors.white,
          elevation: 4,
          label: Text('Login'),
          icon: Icon(Icons.arrow_forward),
          onPressed: (){
            Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
          },
        ),
      ),
    );
  }
}