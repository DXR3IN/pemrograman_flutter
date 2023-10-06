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
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ChatList(
              imageUrl: "https://picsum.photos/id/$index/200/300",
              title: faker.person.name(),
              subtitle: faker.lorem.sentence(),
            );
          },
        ),
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  ChatList(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
      contentPadding: EdgeInsets.all(10),
      trailing: Text("10:00 WIB"),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      title: Text(title),
    );
  }
}