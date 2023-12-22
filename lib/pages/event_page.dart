import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Planing du salon"),
      ),
      body: Center(
        child: ListView(
          children: [
            Card(
              child: ListTile(
                leading: Image.asset(
                  "assets/images/home-img1.jpg",
                  scale: 1.0,
                ),
                title: const Text('Two-line ListTile'),
                subtitle: const Text('Here is a second line'),
                trailing: const Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                leading: Image.asset('assets/images/damien.jpg'),
                title: const Text('Damien Cavaillés (17h30 à 18h)'),
                subtitle: const Text('Git blame --no-of'),
                trailing: const Icon(Icons.more_vert),
              ),
            ),
            Card(
              child: ListTile(
                //leading: FlutterLogo(size: 56.0),
                leading: Image.asset(
                  "assets/images/home-img2.jpg",
                  scale: 1.0,
                ),
                title: const Text('Two-line ListTile'),
                subtitle: const Text('Here is a second line'),
                trailing: const Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
