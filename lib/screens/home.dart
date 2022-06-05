import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Tutorial"),
        ),
        body: ListView(
          shrinkWrap: true,
          reverse: true,
          padding: const EdgeInsets.all(10),
          itemExtent: 100,
          scrollDirection: Axis.horizontal,
          children: const [
            Card(
                child: ListTile(
              title: Text("List Item 1"),
            )),
            Card(
              child: ListTile(
                title: Text("List Item 2"),
              ),
            ),
            Card(
                child: ListTile(
              title: Text("List Item 3"),
            )),
          ],
        ));
  }
}
