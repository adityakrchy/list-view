import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> images = [
    "assets/pikachu.png",
    "assets/ash.jfif",
    "assets/scarlet.jfif",
    "assets/squirtle.jfif",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FLutter List View",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter List View"),
        ),
        body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
                title: const Text("This is title"),
                subtitle: const Text("This is subtitle"),
              ),
            );
          },
          separatorBuilder: (BuildContext context, index) {
            return const Divider(height: 10);
          },
        ),
      ),
    );
  }
}
