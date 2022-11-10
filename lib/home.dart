import 'package:draggable_home/draggable_home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const MaterialApp(
        title: "Draggable Home",
        home: HomePage(),
      );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      title: const Text("Home Page"),
      headerWidget: headerWidget(context),
      body: [],
      fullyStretchable: true,
      backgroundColor: Colors.white,
      appBarColor: Colors.teal,
    );
  }

  Widget headerWidget(BuildContext context) {
    return Container(
      color: Colors.teal,
      child: Center(
        child: Text(
          "Selamat Datang",
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
