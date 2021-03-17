import 'package:diabetes_app/src/screens/recordings_questionnaire.dart';
import 'package:diabetes_app/src/widgets/bottom_nav_bar.dart';
import 'package:diabetes_app/src/widgets/recordings_card.dart';
import 'package:diabetes_app/src/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class RecordingsScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; // This is going to gie me the total height and width of my device
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of my total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kRecordingsLightColor,
              image: DecorationImage(
                image: AssetImage("assets/icons/recordings_clear.png"),
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
                      "Glucometer Readings",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900, fontSize: 26),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Daily Readings",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width:
                          size.width * .5, // It takes 60% of total screen width
                      child: Text(
                        "Glucose is a simple sugar, and approximately 4 g of glucose are present in the blood of a 70 kg human at all times.",
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
                        RecordingsCard(
                          recordingName: "Fasting Blood Sugar",
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        RecordingsQuestionnaire()));
                          },
                        ),
                        RecordingsCard(
                          recordingName: "Random Blood Sugar",
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
