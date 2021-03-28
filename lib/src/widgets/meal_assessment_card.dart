import 'package:diabetes_assistant/src/screens/self_assessment.dart';
import 'package:diabetes_assistant/src/widgets/lifestyles_question_card.dart';
import 'package:diabetes_assistant/src/widgets/physical_exercise_assessment_card.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class MealAssessmentCard extends StatefulWidget {
  final String fastingSugar, postBreakfast, postLunch, bedtimeSugar;
  final String vegetablesMeal, diaryMeal, fatsMeal, proteinMeal, starchsMeal;
  const MealAssessmentCard({
    Key key,
    this.fastingSugar,
    this.postBreakfast,
    this.postLunch,
    this.bedtimeSugar,
    this.vegetablesMeal,
    this.diaryMeal,
    this.fatsMeal,
    this.proteinMeal,
    this.starchsMeal,
  }) : super(key: key);

  @override
  _MealAssessmentCardState createState() => _MealAssessmentCardState();
}

class _MealAssessmentCardState extends State<MealAssessmentCard> {
  createStarchAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Select your portion size"),
          content: Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsLightColor,
                      child: Text(
                        "Small",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      starchsMeal: "Small",
                                    )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsColor,
                      child: Text(
                        "Medium",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      starchsMeal: "Medium",
                                    )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kLifestyleColor,
                      child: Text(
                        "Large",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      starchsMeal: "Large",
                                    )));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  createVegetablesAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Select your portion size"),
          content: Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsLightColor,
                      child: Text(
                        "Small",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      vegetablesMeal: "Small",
                                    )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsColor,
                      child: Text(
                        "Medium",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      vegetablesMeal: "Medium",
                                    )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kLifestyleColor,
                      child: Text(
                        "Large",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      vegetablesMeal: "Large",
                                    )));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  createDiaryAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Select your portion size"),
          content: Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsLightColor,
                      child: Text(
                        "Small",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      diaryMeal: "Small",
                                    )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsColor,
                      child: Text(
                        "Medium",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      diaryMeal: "Medium",
                                    )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kLifestyleColor,
                      child: Text(
                        "Large",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      diaryMeal: "Large",
                                    )));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  createFatsAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Select your portion size"),
          content: Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsLightColor,
                      child: Text(
                        "Small",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      fatsMeal: "Small",
                                    )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsColor,
                      child: Text(
                        "Medium",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      fatsMeal: "Medium",
                                    )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kLifestyleColor,
                      child: Text(
                        "Large",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      fatsMeal: "Large",
                                    )));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  createProteinAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Select your portion size"),
          content: Container(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsLightColor,
                      child: Text(
                        "Small",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      proteinMeal: "Small",
                                    )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsColor,
                      child: Text(
                        "Medium",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      proteinMeal: "Medium",
                                    )));
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    height: 45,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kLifestyleColor,
                      child: Text(
                        "Large",
                        style: Theme.of(context).textTheme.title.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MealAssessmentCard(
                                      proteinMeal: "Large",
                                    )));
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AssessmentScreen()));
                      },
                      child: Icon(
                        Icons.cancel,
                        color: kShadowColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * .005),
                Container(
                  height: 92,
                  width: 93,
                  decoration: BoxDecoration(
                    color: kRecordingsLightColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.hourglass_empty,
                    color: Colors.white,
                    size: 46,
                  ),
                ),
                SizedBox(height: size.height * .035),
                Text(
                  "What meals did you eat today?",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: size.height * .015),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Starch",
                      press: () {
                        createStarchAlertDialog(context);
                      },
                    ),
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Vegetables",
                      press: () {
                        createVegetablesAlertDialog(context);
                      },
                    ),
                  ],
                ),
                new Text("${widget.fastingSugar}"),
                new Text("${widget.starchsMeal}"),
                SizedBox(height: size.height * .02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Diary",
                      press: () {
                        createDiaryAlertDialog(context);
                      },
                    ),
                  ],
                ),
                SizedBox(height: size.height * .02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Fats",
                      press: () {
                        createFatsAlertDialog(context);
                      },
                    ),
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Protein",
                      press: () {
                        createProteinAlertDialog(context);
                      },
                    ),
                  ],
                ),
                Container(
                  height: size.height * .07,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      color: kRecordingsColor,
                      child: Text("NEXT",
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 22.0,
                              )),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PhysicalExerciseAssessmentCard(
                                      fastingSugar: widget.fastingSugar,
                                      postBreakfast: widget.postBreakfast,
                                      postLunch: widget.postLunch,
                                      bedtimeSugar: widget.bedtimeSugar,
                                      starchsMeal: widget.starchsMeal,
                                      vegetablesMeal: widget.vegetablesMeal,
                                      diaryMeal: widget.diaryMeal,
                                      fatsMeal: widget.fatsMeal,
                                      proteinMeal: widget.proteinMeal,
                                    )));
                      },
                    ),
                  ),
                ),
                SizedBox(height: size.height * .01),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PhysicalExerciseAssessmentCard(
                                  fastingSugar: widget.fastingSugar,
                                  postBreakfast: widget.postBreakfast,
                                  postLunch: widget.postLunch,
                                  bedtimeSugar: widget.bedtimeSugar,
                                  starchsMeal: widget.starchsMeal,
                                  vegetablesMeal: widget.vegetablesMeal,
                                  diaryMeal: widget.diaryMeal,
                                  fatsMeal: widget.fatsMeal,
                                  proteinMeal: widget.proteinMeal,
                                )));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50.0,
                    child: Center(
                      child: Text("SKIP",
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: kRecordingsLightColor,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                fontSize: 22.0,
                              )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
