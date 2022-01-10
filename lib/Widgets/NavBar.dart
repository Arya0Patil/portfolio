import 'package:flutter/material.dart';
import 'package:portfolio/Pages/about.dart';
import 'package:portfolio/Pages/contact.dart';
import 'package:portfolio/Pages/homepage.dart';
import 'package:portfolio/Pages/skillsPage.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Arya",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.purple[300],
          ),
        ),
        Row(
          children: [
            TextButton(
                onPressed: () {
                  print(sz);
                  Navigator.of(context).pushNamed(contact.route);
                },
                child: Text(
                  "Contact",
                  style: TextStyle(color: Colors.black),
                )),
            SizedBox(
              width: 15,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(About.route);
                },
                child: Text("About", style: TextStyle(color: Colors.black))),
            SizedBox(
              width: 15,
            ),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Skills.route);
                },
                child: Text("Skills", style: TextStyle(color: Colors.black))),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ],
    );
  }
}
