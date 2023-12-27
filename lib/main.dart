import 'package:flutter/material.dart';
import 'package:mon_premier_projet_flutter/pages/add_event_page.dart';
import 'package:mon_premier_projet_flutter/pages/event_page.dart';
import 'package:mon_premier_projet_flutter/pages/home_page.dart';
//import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_month,
    Icons.add,
  ];
  setCurrentIndex(int index) {
    // mise a jour de l'état de l'application
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //title: 'My Dog App',
        home: Scaffold(
      appBar: AppBar(
        title: const [
          Text('Accueil'),
          Text('Liste'),
          Text('Formulaire'),
        ][_currentIndex],
      ),
      body: const [HomePage(), EventPage(), AddEventPage()][_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          type: BottomNavigationBarType.fixed, // changement de page au click
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          iconSize: 32,
          elevation: 20,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: "Liste",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add",
            ),
          ]),
    ));
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