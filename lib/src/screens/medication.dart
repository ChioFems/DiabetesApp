import 'package:diabetes_assistant/src/widgets/medication_card.dart';
import 'package:diabetes_assistant/src/widgets/search_bar.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class MedicationScreen extends StatelessWidget {
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
              color: kMedicationLightColor,
              image: DecorationImage(
                image: AssetImage("assets/icons/medication_page.png"),
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
                      "My Medication",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontWeight: FontWeight.w900, fontSize: 26),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Daily Prescriptions",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width:
                          size.width * .5, // It takes 60% of total screen width
                      child: Text(
                        "A medication is a drug used to diagnose, cure, treat or prevent disease. Don't forhet to take your prescriptions.",
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
                        MedicationCard(
                          recordingName: "Panadol - (3x3) 4 days",
                          press: () {},
                        ),
                        MedicationCard(
                          recordingName: "Diclofenac - (2x3) 7 days",
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
