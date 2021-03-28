import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diabetes_assistant/constants.dart';
import 'package:diabetes_assistant/src/screens/Core/Education.dart';
import 'package:diabetes_assistant/src/screens/Core/Home.dart';
import 'package:diabetes_assistant/src/screens/Core/Lifestyle.dart';
import 'package:diabetes_assistant/src/screens/Core/Medication.dart';
import 'package:diabetes_assistant/src/screens/Core/Recordings.dart';
import 'package:flutter/material.dart';

class CurvedBottomNavigationBar extends StatefulWidget {
  @override
  _CurvedBottomNavigationBarState createState() =>
      _CurvedBottomNavigationBarState();
}

class _CurvedBottomNavigationBarState extends State<CurvedBottomNavigationBar> {
  int _page = 0;

  final _pageOption = [
    HomeScreen(),
    RecordingsScreen(),
    LifestyleScreen(),
    EducationScreen(),
    MedicationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        items: <Widget>[
          Icon(Icons.dashboard,
              size: 20, color: Theme.of(context).scaffoldBackgroundColor),
          Icon(Icons.queue,
              size: 20, color: Theme.of(context).scaffoldBackgroundColor),
          Icon(Icons.poll,
              size: 20, color: Theme.of(context).scaffoldBackgroundColor),
          Icon(Icons.poll,
              size: 20, color: Theme.of(context).scaffoldBackgroundColor),
          Icon(Icons.list,
              size: 20, color: Theme.of(context).scaffoldBackgroundColor),
        ],
        height: 55,
        color: kHomeColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        buttonBackgroundColor: kActiveIconColor,
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
