import 'package:diabetes_assistant/src/screens/lifestyles_meals.dart';
import 'package:diabetes_assistant/src/screens/lifestyles_physical.dart';
import 'package:diabetes_assistant/src/widgets/bottom_nav_bar.dart';
import 'package:diabetes_assistant/src/widgets/lifestyles_card.dart';
import 'package:diabetes_assistant/src/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class LifestyleScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; // This is going to give me the total height and width of my device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of my total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kLifestyleLightColor,
              image: DecorationImage(
                image: AssetImage("assets/icons/lifestyle_page.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: size.height * 0.05),
                    Text(
                      "Life Styles",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900, fontSize: 26),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Daily Habits",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width:
                          size.width * .5, // It takes 60% of total screen width
                      child: Text(
                        "Is the way you live including your style, attitudes and possessions. Daily habits and choices.",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * .5,
                      child: SearchBar(searchText: "Search"),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: <Widget>[
                        LifestylesCard(
                          recordingName: "Meal Intake",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LifestylesMeals(
                                          qnsText:
                                              "Select your Meal Category/ Group",
                                          save: () {
                                            Navigator.pop(context);
                                          },
                                        )));
                          },
                        ),
                        LifestylesCard(
                          recordingName: "Physical Exercise",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LifestylesPhysical(
                                          qnsText:
                                              "Select your Exercise Category/ Group",
                                          save: () {
                                            Navigator.pop(context);
                                          },
                                        )));
                          },
                        ),
                        LifestylesCard(
                          recordingName: "Other Questionnaires",
                          press: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
