import 'package:diabetes_assistant/constants.dart';
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
            imgSrc: "assets/icons/home.png",
            isActive: true,
            press: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),
          BottomNavItem(
            title: "Life Style",
            imgSrc: "assets/icons/lifestyle.png",
            isActive: false,
            press: () {
              Navigator.of(context).pushNamed('/lifestyle');
            },
          ),
          BottomNavItem(
            title: "My Records",
            imgSrc: "assets/icons/my_records.png",
            isActive: false,
            press: () {
              Navigator.of(context).pushNamed('/recordings');
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
