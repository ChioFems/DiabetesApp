import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diabetes_assistant/constants.dart';
import 'package:diabetes_assistant/src/screens/self_assessment.dart';
import 'package:diabetes_assistant/src/screens/education.dart';
import 'package:diabetes_assistant/src/screens/lifestyle.dart';
import 'package:diabetes_assistant/src/screens/medication.dart';
import 'package:diabetes_assistant/src/screens/recordings.dart';
import 'package:diabetes_assistant/src/widgets/category_card.dart';
import 'package:diabetes_assistant/src/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; // This is going to gie me the total height and width of my device
    return Scaffold(
      //bottomNavigationBar: CurvedNavBar(page: 1),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of my total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: Color(0xFF00BFBB),
              /*image: DecorationImage(
                alignment: Alignment.centerLeft,
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/water_home.png"),
              ),*/
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        color: Color(0xFF0EA394),
                        shape: BoxShape.circle,
                      ),
                      // child: SvgPicture.asset("assets/icons/menu.svg"),
                      child: Image.asset("assets/icons/share.png"),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    alignment: Alignment.center,
                    height: 70,
                    width: 70,
                    child: Image.asset("assets/icons/logo.png"),
                  ),
                  Text(
                    "Your Mobile Medical Care",
                    style: Theme.of(context).textTheme.display1.copyWith(
                        fontWeight: FontWeight.w800,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                  SearchBar(
                    searchText: "What are you looking for?",
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .92,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Self Assessment",
                          imgSrc: "assets/icons/recordings_menu.png",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AssessmentScreen()));
                          },
                        ),
                        /* CategoryCard(
                          title: "Self Recordings",
                          imgSrc: "assets/icons/recordings_menu.png",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RecordingsScreen()));
                          },
                        ),
                        CategoryCard(
                          title: "Life Style Data",
                          imgSrc: "assets/icons/lifestyle_menu.png",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LifestyleScreen()));
                          },
                        ),*/
                        CategoryCard(
                          title: "Education",
                          imgSrc: "assets/icons/education_menu.png",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EducationScreen()));
                          },
                        ),
                        CategoryCard(
                          title: "Medication",
                          imgSrc: "assets/icons/medication_menu.png",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MedicationScreen()));
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
