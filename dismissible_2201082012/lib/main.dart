import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  final Faker faker = Faker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dissmised"),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            background: Container(
              color: Colors.redAccent,
              child: Icon(Icons.delete),
              alignment: Alignment.centerRight,
              padding: EdgeInsetsDirectional.only(end: 10),
            ),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
              showDialog(context: context, builder: (context) {return;},)
            },
            child: ListTile(
              leading: CircleAvatar(
                child: Center(
                  child: Text("${index + 1}"),
                ),
              ),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
              tileColor: Colors.blueGrey,
            ),
          );
        },
      ),
    );
  }
}
