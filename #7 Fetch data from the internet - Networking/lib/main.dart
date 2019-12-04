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

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: FutureBuilder<List<Post>>(
          future: fetchPost(http.Client()),
          builder: (context, snapshot){
            if (snapshot.hasError) print(snapshot.error);

          return snapshot.hasData
              ? PostList(post: snapshot.data)
              : Center(child: CircularProgressIndicator());
          },
        ),
      )
    );
  }
}

class PostList extends StatelessWidget {
  final List<Post> post;

  PostList({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      height: 1000,
      width: 1000,
      child: GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 6,
      ),
      itemCount: post.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10),
            child: Text(post[index].title),
        ) ;
      },
    ),
    );
  }
}

class Post{
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}

Future<List<Post>> fetchPost(http.Client client) async {
  final response = 
  await http.get('https://jsonplaceholder.typicode.com/posts');

return compute(parsePost, response.body);
}

// A function that converts a response body into a List<Photo>.
List<Post> parsePost(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Post>((json) => Post.fromJson(json)).toList();
}