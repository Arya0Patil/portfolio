import 'package:flutter/material.dart';
import 'package:portfolio/Pages/homepage.dart';

class SkillHome extends StatefulWidget {
  @override
  _SkillHomeState createState() => _SkillHomeState();
}

class _SkillHomeState extends State<SkillHome> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Mastered Skills",
            style:
                TextStyle(fontSize: sz.width / 32, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              InkWell(
                  onHover: (value) {
                    setState(() {
                      isHover = true;
                    });
                  },
                  child: Card(
                    elevation: isHover ? 20 : 0,
                    child: Column(
                      children: [
                        Container(
                          child: Text("hi"),
                          height: 200,
                          width: 100,
                          color: Colors.amber,
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
