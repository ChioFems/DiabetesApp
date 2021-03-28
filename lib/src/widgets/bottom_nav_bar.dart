import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diabetes_assistant/constants.dart';
import 'package:diabetes_assistant/src/screens/self_assessment.dart';
import 'package:diabetes_assistant/src/screens/education.dart';
import 'package:diabetes_assistant/src/screens/home.dart';
import 'package:diabetes_assistant/src/screens/medication.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar();

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  _BottomNavBarState();
  int _page = 0;
  final _pageOption = [
    HomeScreen(),
    AssessmentScreen(),
    EducationScreen(),
    MedicationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: false,
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        items: <Widget>[
          /*Icon(Icons.dashboard,
              size: 20, color: Theme.of(context).scaffoldBackgroundColor),*/
          Container(
            height: 35,
            width: 35,
            child: Image.asset("assets/icons/home_nav.png"),
          ),
          Container(
            height: 35,
            width: 35,
            child: Image.asset("assets/icons/assessment_nav.png"),
          ),
          Container(
            height: 35,
            width: 35,
            child: Image.asset("assets/icons/education_nav.png"),
          ),
          Container(
            height: 35,
            width: 35,
            child: Image.asset("assets/icons/medication_nav.png"),
          ),
        ],
        height: 65,
        color: kActiveIconColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        buttonBackgroundColor: kHomeColor,
        animationDuration: Duration(milliseconds: 250),
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          // debugPrint("Current index is: $index");
          setState(() {
            _page = index;
          });
        },
      ),
      body: _pageOption[_page],
    );
  }
}
