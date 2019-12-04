import 'package:flutter_web/material.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: RaisedButton.icon(
          color: Colors.blue,
          textColor: Colors.white,
          elevation: 4,
          label: Text('Login'),
          icon: Icon(Icons.arrow_forward),
          onPressed: (){
            Navigator.push(context, _createRoute());
          },
        ),
      ),
    );
  }
}

//SizeFactor Transition
Route _createRoute(){
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child){

      return SizeTransition(
        sizeFactor: animation,
        child: child,
      );
    },
  );
}


// //Fade Transition
// Route _createRoute(){
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child){

//       return FadeTransition(
//         opacity: animation,
//         child: child,
//       );
//     },
//   );
// }

// //Rotate Transition
// Route _createRoute(){
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child){

//       var curve = Curves.linear;

//       var tween = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animation, curve: curve));

//       return RotationTransition(
//         turns: tween,
//         child: child,
//       );
//     },
//   );
// }

// //Scale Transition
// Route _createRoute(){
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child){

//       var curve = Curves.fastOutSlowIn;

//       var tween = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(parent: animation, curve: curve));

//       return ScaleTransition(
//         scale: tween,
//         child: child,
//       );
//     },
//   );
// }


// //SlideTransition
// Route _createRoute(){
//   return PageRouteBuilder(
//     pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
//     transitionsBuilder: (context, animation, secondaryAnimation, child){

//       var begin = Offset(-1.0, 0.0);
//       var end = Offset.zero;
//       var curve = Curves.ease;

//       var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

//       return SlideTransition(
//         position: animation.drive(tween),
//         child: child,
//       );
//     },
//   );
// }

