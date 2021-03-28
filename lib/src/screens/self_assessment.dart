import 'package:diabetes_assistant/src/screens/recordings_questionnaire.dart';
import 'package:diabetes_assistant/src/widgets/blood_sugar_assessment_card.dart';
import 'package:diabetes_assistant/src/widgets/recordings_card.dart';
import 'package:diabetes_assistant/src/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AssessmentScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; // This is going to give me the total height and width of my device
    return Scaffold(
      // bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of my total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kRecordingsLightColor,
              image: DecorationImage(
                image: AssetImage("assets/icons/recordings_page.png"),
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
                      "Self Assessment",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900, fontSize: 26),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Daily Recordings",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width:
                          size.width * .5, // It takes 60% of total screen width
                      child: Text(
                        "What you can't track, you can't measure. Daily Self Assessment helps you to track and measure your behavioral changes.",
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
                        Container(
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: kShadowColor,
                              ),
                            ],
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            BloodSugarAssessmentCard()));
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 42,
                                      width: 43,
                                      child: Icon(
                                        Icons.person,
                                        color: kRecordingsColor,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Start Self Assessment",
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width * 0.95,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 17),
                                blurRadius: 23,
                                spreadRadius: -13,
                                color: kShadowColor,
                              ),
                            ],
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      height: 42,
                                      width: 43,
                                      child: Icon(
                                        Icons.people,
                                        color: kRecordingsColor,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Start General Assessment",
                                      style:
                                          Theme.of(context).textTheme.subtitle2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
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
