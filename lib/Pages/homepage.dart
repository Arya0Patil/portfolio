import 'package:flutter/material.dart';
import 'package:portfolio/Widgets/NavBar.dart';

class HomePag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
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
        ],
      ),
    );
  }
}
