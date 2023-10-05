import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Extract Widget'),
          ),
        ),
        body: ListView(
          children: [
            ListChat(
              imageUrl: "https://picsum.photos/200/300",
              title: "Dika",
              subtitle: "Makan",
            ),
            ListChat(),
            ListChat(),
            ListChat(),
            ListChat(),
            ListChat(),
          ],
        ),
      ),
    );
  }
}

class ListChat extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  ListChat({this.imageUrl, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      contentPadding: EdgeInsets.all(10),
      trailing: Text("10:00 WIB"),
      subtitle: Text(subtitle),
      title: Text(title),
    );
  }
}
