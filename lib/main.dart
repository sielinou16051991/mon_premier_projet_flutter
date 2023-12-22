import 'package:flutter/material.dart';
import 'package:mon_premier_projet_flutter/pages/home_page.dart';
//import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //title: 'My Dog App',
      home: HomePage(),
    );
  }
}
/*
class DogName extends StatelessWidget {
  final String name;
  const DogName(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.lightBlueAccent),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(name),
      ),
    );
  }
}
*/