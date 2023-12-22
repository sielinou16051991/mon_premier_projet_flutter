import 'package:flutter/material.dart';
import 'package:mon_premier_projet_flutter/pages/event_page.dart';

//import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SvgPicture.asset(
            // "assets/images/home-img.svg",
            //color: Colors.blue,
            //),
            Image.asset("assets/images/home-img.png"),
            const Text(
              "Asynconf 2023",
              style: TextStyle(fontSize: 42, fontFamily: 'Poppins'),
            ),
            const Text(
              "salon virtuel de l'informatique. du 20 au 31 décembre 2023",
              style: TextStyle(
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
            ),
            ElevatedButton.icon(
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(10)),
                  backgroundColor: MaterialStatePropertyAll(Colors.green)),
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (_, __, ___) => const EventPage()));
              },
              label: const Text(
                "Afficher le planning",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              icon: Icon(Icons.calendar_month),
            ),
          ],
        ),
      )
  }
}
