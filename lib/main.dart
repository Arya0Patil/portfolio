import 'package:flutter/material.dart';
import 'package:portfolio/Pages/about.dart';
import 'package:portfolio/Pages/contact.dart';
import 'package:portfolio/Pages/homepage.dart';
import 'package:portfolio/Pages/skillsPage.dart';
import 'package:portfolio/Widgets/NavBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.route,
      routes: {
        HomePage.route: (context) => HomePage(),
        Skills.route: (context) => Skills(),
        About.route: (context) => About(),
        contact.route: (context) => contact(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  static const String route = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: NavBar(),
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0), child: HomePag()),
        ],
      ),
    );
  }
}
