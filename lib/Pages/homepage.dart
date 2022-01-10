import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/NavBar.dart';
import 'package:portfolio/Widgets/SkillHome.dart';

var sz;

class HomePag extends StatefulWidget {
  @override
  _HomePagState createState() => _HomePagState();
}

class _HomePagState extends State<HomePag> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    sz = screenSize;

    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: screenSize.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello",
                      style: TextStyle(fontSize: screenSize.width / 28),
                    ),
                    Text(
                      "I AM ARYA PATIL",
                      style: TextStyle(
                          fontSize: screenSize.width / 19.6,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(fontSize: screenSize.width / 32),
                    ),
                    SizedBox(
                      height: screenSize.width / 42.5,
                    ),
                    Container(
                      height: screenSize.width / 25.6,
                      width: screenSize.width / 8.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            Colors.purple[800],
                            Colors.deepPurple[600]
                          ])),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {},
                          child: Text(
                            "Let's Talk",
                            style: TextStyle(fontSize: screenSize.width / 55.6),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.width / 2.5,
                width: screenSize.width / 3,
                child: Image.asset(
                  "assets/home-right.png",
                ),
              ),
            ],
          ),
          SkillHome(),
        ],
      ),
    );
  }
}
