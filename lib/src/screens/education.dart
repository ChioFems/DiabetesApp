import 'package:diabetes_assistant/src/widgets/education_card.dart';
import 'package:diabetes_assistant/src/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class EducationScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; // This is going to gie me the total height and width of my device
    return Scaffold(
      //bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of my total height
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kEducationLightColor,
              image: DecorationImage(
                image: AssetImage("assets/icons/education_page.png"),
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
                      "Education",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900, fontSize: 26),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "5-10 MIN Videos",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width:
                          size.width * .6, // It takes 60% of total screen width
                      child: Text(
                        "Live happier and healthier by learning the fundamentals of balanced diet and daily exercises. Health is the new wealth!",
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
                        EducationCard(
                          educationName: "Video 01",
                          isDone: true,
                          press: () {},
                        ),
                        EducationCard(
                          educationName: "Video 02",
                          isDone: false,
                          press: () {},
                        ),
                        EducationCard(
                          educationName: "Video 03",
                          isDone: false,
                          press: () {},
                        ),
                        EducationCard(
                          educationName: "Video 04",
                          isDone: false,
                          press: () {},
                        ),
                        EducationCard(
                          educationName: "Video 05",
                          isDone: false,
                          press: () {},
                        ),
                        EducationCard(
                          educationName: "Video 06",
                          isDone: false,
                          press: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Short Courses",
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.symmetric(vertical: 10),
                      height: 80,
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
                      child: Row(
                        children: <Widget>[
                          Icon(Icons
                              .chrome_reader_mode), // Replace with svg or undraw image
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Text(
                                  "Basic 2",
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                                Text(
                                  "Blood Pressure Basics",
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(Icons.lock),
                          ),
                        ],
                      ),
                    ),
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
