import 'package:diabetes_assistant/constants.dart';
import 'package:diabetes_assistant/src/screens/home.dart';
import 'package:diabetes_assistant/src/screens/lifestyle.dart';
import 'package:diabetes_assistant/src/screens/recordings.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BottomNavItem(
            title: "Home",
            imgSrc: "assets/icons/home_nav.png",
            isActive: true,
            press: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
          BottomNavItem(
            title: "Life Style",
            imgSrc: "assets/icons/lifestyle_nav.png",
            isActive: false,
            press: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LifestyleScreen()));
            },
          ),
          BottomNavItem(
            title: "My Records",
            imgSrc: "assets/icons/my_records_nav.png",
            isActive: false,
            press: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => RecordingsScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String imgSrc;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key,
    this.imgSrc,
    this.title,
    this.press,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Image(
              image: AssetImage(imgSrc),
              width: 40,
              color: isActive ? kActiveIconColor : kTextColor),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
