import 'package:diabetes_assistant/src/screens/self_assessment.dart';
import 'package:diabetes_assistant/src/widgets/emotion_assessment_card.dart';
import 'package:diabetes_assistant/src/widgets/lifestyles_question_card.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class PhysicalExerciseAssessmentCard extends StatefulWidget {
  final String fastingSugar, postBreakfast, postLunch, bedtimeSugar;
  final String vegetablesMeal, diaryMeal, fatsMeal, proteinMeal, starchsMeal;
  final String runningExercise,
      swimmingExercise,
      cyclingExercise,
      walkingExercise,
      acrobaticsExercise,
      gymnasticsExercise;
  const PhysicalExerciseAssessmentCard({
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
    this.runningExercise,
    this.swimmingExercise,
    this.cyclingExercise,
    this.walkingExercise,
    this.acrobaticsExercise,
    this.gymnasticsExercise,
  }) : super(key: key);

  @override
  _PhysicalExerciseAssessmentCardState createState() =>
      _PhysicalExerciseAssessmentCardState();
}

class _PhysicalExerciseAssessmentCardState
    extends State<PhysicalExerciseAssessmentCard> {
  final TextEditingController _runningExerciseController =
      TextEditingController();
  final TextEditingController _swimmingExerciseController =
      TextEditingController();
  final TextEditingController _cyclingExerciseController =
      TextEditingController();
  final TextEditingController _walkingExerciseController =
      TextEditingController();
  final TextEditingController _acrobaticsExerciseController =
      TextEditingController();
  final TextEditingController _gymnasticsExerciseController =
      TextEditingController();

  createRunningAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "How long did your workout last?",
            textAlign: TextAlign.center,
          ),
          content: Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kShadowColor),
                    cursorColor: kShadowColor,
                    keyboardType: TextInputType.number,
                    controller: _runningExerciseController,
                    decoration: InputDecoration(
                      hintText: 'Duration in minutes',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PhysicalExerciseAssessmentCard(
                                  runningExercise:
                                      _runningExerciseController.text,
                                )));
                  },
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kRecordingsColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text("Submit",
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: Colors.white,
                              )),
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

  createSwimmingAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "How long did your workout last?",
            textAlign: TextAlign.center,
          ),
          content: Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kShadowColor),
                    cursorColor: kShadowColor,
                    keyboardType: TextInputType.number,
                    controller: _swimmingExerciseController,
                    decoration: InputDecoration(
                      hintText: 'Duration in minutes',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PhysicalExerciseAssessmentCard(
                                  swimmingExercise:
                                      _swimmingExerciseController.text,
                                )));
                  },
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kRecordingsColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text("Submit",
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: Colors.white,
                              )),
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

  createCyclingAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "How long did your workout last?",
            textAlign: TextAlign.center,
          ),
          content: Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kShadowColor),
                    cursorColor: kShadowColor,
                    keyboardType: TextInputType.number,
                    controller: _cyclingExerciseController,
                    decoration: InputDecoration(
                      hintText: 'Duration in minutes',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PhysicalExerciseAssessmentCard(
                                  cyclingExercise:
                                      _cyclingExerciseController.text,
                                )));
                  },
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kRecordingsColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text("Submit",
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: Colors.white,
                              )),
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

  createWalkingAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "How long did your workout last?",
            textAlign: TextAlign.center,
          ),
          content: Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kShadowColor),
                    cursorColor: kShadowColor,
                    keyboardType: TextInputType.number,
                    controller: _walkingExerciseController,
                    decoration: InputDecoration(
                      hintText: 'Duration in minutes',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PhysicalExerciseAssessmentCard(
                                  walkingExercise:
                                      _walkingExerciseController.text,
                                )));
                  },
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kRecordingsColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text("Submit",
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: Colors.white,
                              )),
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

  createAcrobaticsAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "How long did your workout last?",
            textAlign: TextAlign.center,
          ),
          content: Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kShadowColor),
                    cursorColor: kShadowColor,
                    keyboardType: TextInputType.number,
                    controller: _acrobaticsExerciseController,
                    decoration: InputDecoration(
                      hintText: 'Duration in minutes',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PhysicalExerciseAssessmentCard(
                                  acrobaticsExercise:
                                      _acrobaticsExerciseController.text,
                                )));
                  },
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kRecordingsColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text("Submit",
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: Colors.white,
                              )),
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

  createGymnasticsAlertDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "How long did your workout last?",
            textAlign: TextAlign.center,
          ),
          content: Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Flexible(
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kShadowColor),
                    cursorColor: kShadowColor,
                    keyboardType: TextInputType.number,
                    controller: _gymnasticsExerciseController,
                    decoration: InputDecoration(
                      hintText: 'Duration in minutes',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kShadowColor),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                PhysicalExerciseAssessmentCard(
                                  gymnasticsExercise:
                                      _gymnasticsExerciseController.text,
                                )));
                  },
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kRecordingsColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text("Submit",
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: Colors.white,
                              )),
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
                  "What physical exercises did you perform today?",
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
                      imgString: "assets/icons/running_exercise.png",
                      cardName: "Running",
                      press: () {
                        createRunningAlertDialog(context);
                      },
                    ),
                    LifestylesQuestionCard(
                      imgString: "assets/icons/swimming_exercise.png",
                      cardName: "Swimming",
                      press: () {
                        createSwimmingAlertDialog(context);
                      },
                    ),
                  ],
                ),
                new Text("${widget.fastingSugar}"),
                new Text("${widget.starchsMeal}"),
                new Text("${widget.runningExercise}"),
                new Text("${widget.swimmingExercise}"),
                SizedBox(height: size.height * .02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    LifestylesQuestionCard(
                      imgString: "assets/icons/cycling_exercise.png",
                      cardName: "Cycling",
                      press: () {
                        createCyclingAlertDialog(context);
                      },
                    ),
                    LifestylesQuestionCard(
                      imgString: "assets/icons/walking_exercise.png",
                      cardName: "Walking",
                      press: () {
                        createWalkingAlertDialog(context);
                      },
                    ),
                  ],
                ),
                SizedBox(height: size.height * .02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    LifestylesQuestionCard(
                      imgString: "assets/icons/acrobatics_exercise.png",
                      cardName: "Acrobatics",
                      press: () {
                        createAcrobaticsAlertDialog(context);
                      },
                    ),
                    LifestylesQuestionCard(
                      imgString: "assets/icons/gymnastics_exercise.png",
                      cardName: "Gymnastics",
                      press: () {
                        createGymnasticsAlertDialog(context);
                      },
                    ),
                  ],
                ),
                SizedBox(height: size.height * .055),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 10.0),
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
                                        EmotionsAssessmentCard(
                                          fastingSugar: widget.fastingSugar,
                                          postBreakfast: widget.postBreakfast,
                                          postLunch: widget.postLunch,
                                          bedtimeSugar: widget.bedtimeSugar,
                                          starchsMeal: widget.starchsMeal,
                                          vegetablesMeal: widget.vegetablesMeal,
                                          diaryMeal: widget.diaryMeal,
                                          fatsMeal: widget.fatsMeal,
                                          proteinMeal: widget.proteinMeal,
                                          runningExercise:
                                              widget.runningExercise,
                                          swimmingExercise:
                                              widget.swimmingExercise,
                                          cyclingExercise:
                                              widget.cyclingExercise,
                                          walkingExercise:
                                              widget.walkingExercise,
                                          acrobaticsExercise:
                                              widget.acrobaticsExercise,
                                          gymnasticsExercise:
                                              widget.gymnasticsExercise,
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
                                builder: (context) => EmotionsAssessmentCard(
                                      fastingSugar: widget.fastingSugar,
                                      postBreakfast: widget.postBreakfast,
                                      postLunch: widget.postLunch,
                                      bedtimeSugar: widget.bedtimeSugar,
                                      starchsMeal: widget.starchsMeal,
                                      vegetablesMeal: widget.vegetablesMeal,
                                      diaryMeal: widget.diaryMeal,
                                      fatsMeal: widget.fatsMeal,
                                      proteinMeal: widget.proteinMeal,
                                      runningExercise: widget.runningExercise,
                                      swimmingExercise: widget.swimmingExercise,
                                      cyclingExercise: widget.cyclingExercise,
                                      walkingExercise: widget.walkingExercise,
                                      acrobaticsExercise:
                                          widget.acrobaticsExercise,
                                      gymnasticsExercise:
                                          widget.gymnasticsExercise,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
