import 'package:diabetes_assistant/src/data/rest_data_service.dart';
import 'package:diabetes_assistant/src/presenters/self_assessment_card.dart';
import 'package:diabetes_assistant/src/screens/self_assessment.dart';
import 'package:diabetes_assistant/src/widgets/lifestyles_question_card.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class BloodSugarAssessmentCard extends StatefulWidget {
  const BloodSugarAssessmentCard({
    Key key,
  }) : super(key: key);

  @override
  _BloodSugarAssessmentCardState createState() =>
      _BloodSugarAssessmentCardState();
}

class _BloodSugarAssessmentCardState extends State<BloodSugarAssessmentCard> {
  // NetworkUtil _networkUtil;
  // String _fastingSugar, _postBreakfast, _postLunch, _bedtimeSugar;
  // Holds entered value for the textField
  final TextEditingController _fastingController = TextEditingController();
  final TextEditingController _postBreakfastController =
      TextEditingController();
  final TextEditingController _postLunchController = TextEditingController();
  final TextEditingController _bedtimeController = TextEditingController();

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
                    Icons.fastfood,
                    color: Colors.white,
                    size: 46,
                  ),
                ),
                SizedBox(height: size.height * .05),
                Text(
                  "1. What is your fasting blood sugar?",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //SizedBox(height: size.height * .010),
                Container(
                  width: size.width * .35,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: TextFormField(
                          style: TextStyle(color: kShadowColor),
                          textAlign: TextAlign.center,
                          controller: _fastingController,
                          cursorColor: kShadowColor,
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: ' ',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kShadowColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kShadowColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "mmol/L",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.title.copyWith(
                            fontStyle: FontStyle.italic, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * .035),
                Text(
                  "2. What is your post breakfast blood sugar?",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //SizedBox(height: size.height * .010),
                Container(
                  width: size.width * .35,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: TextFormField(
                          style: TextStyle(color: kShadowColor),
                          textAlign: TextAlign.center,
                          controller: _postBreakfastController,
                          cursorColor: kShadowColor,
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: ' ',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kShadowColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kShadowColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "mmol/L",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.title.copyWith(
                            fontStyle: FontStyle.italic, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * .035),
                //new Text(_fastingController.text),
                //new Text(_postBreakfastController.text),
                Text(
                  "3. What is your post lunch blood sugar?",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //SizedBox(height: size.height * .010),
                Container(
                  width: size.width * .35,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: TextFormField(
                          style: TextStyle(color: kShadowColor),
                          textAlign: TextAlign.center,
                          controller: _postLunchController,
                          cursorColor: kShadowColor,
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: ' ',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kShadowColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kShadowColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "mmol/L",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.title.copyWith(
                            fontStyle: FontStyle.italic, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * .035),
                Text(
                  "4. What is your bedtime blood sugar?",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                //SizedBox(height: size.height * .010),
                Container(
                  width: size.width * .35,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        child: TextFormField(
                          style: TextStyle(color: kShadowColor),
                          textAlign: TextAlign.center,
                          controller: _bedtimeController,
                          cursorColor: kShadowColor,
                          keyboardType: TextInputType.number,
                          autocorrect: false,
                          autofocus: false,
                          decoration: InputDecoration(
                            hintText: ' ',
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kShadowColor),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: kShadowColor),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        "mmol/L",
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.title.copyWith(
                            fontStyle: FontStyle.italic, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * .10,
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
                                builder: (context) => MealAssessmentCard(
                                      fastingSugar: _fastingController.text,
                                      postBreakfast:
                                          _postBreakfastController.text,
                                      postLunch: _postLunchController.text,
                                      bedtimeSugar: _bedtimeController.text,
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
                            builder: (context) => MealAssessmentCard(
                                  fastingSugar: _fastingController.text,
                                  postBreakfast: _postBreakfastController.text,
                                  postLunch: _postLunchController.text,
                                  bedtimeSugar: _bedtimeController.text,
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
  // NetworkUtil _networkUtil;
  // final String fastingSugar, postBreakfast, postLunch, bedtimeSugar;
  // final String vegetablesMeal, diaryMeal, fatsMeal, proteinMeal, starchsMeal;
  // Holds entered value for the cards

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
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Running",
                      press: () {
                        createRunningAlertDialog(context);
                      },
                    ),
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
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
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Cycling",
                      press: () {
                        createCyclingAlertDialog(context);
                      },
                    ),
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
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
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Acrobatics",
                      press: () {
                        createAcrobaticsAlertDialog(context);
                      },
                    ),
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
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

class EmotionsAssessmentCard extends StatefulWidget {
  final String fastingSugar, postBreakfast, postLunch, bedtimeSugar;
  final String vegetablesMeal, diaryMeal, fatsMeal, proteinMeal, starchsMeal;
  final String runningExercise,
      swimmingExercise,
      cyclingExercise,
      walkingExercise,
      acrobaticsExercise,
      gymnasticsExercise;
  final String happyEmotion, coolEmotion, sadEmotion, angryEmotion;
  const EmotionsAssessmentCard({
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
    this.happyEmotion,
    this.coolEmotion,
    this.sadEmotion,
    this.angryEmotion,
  }) : super(key: key);

  @override
  _EmotionsAssessmentCardState createState() => _EmotionsAssessmentCardState();
}

class _EmotionsAssessmentCardState extends State<EmotionsAssessmentCard> {
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SelfAssessmentCardPresenter _presenter;

  void _showSnackBar(String text) {
    scaffoldKey.currentState
        .showSnackBar(new SnackBar(content: new Text(text)));
  }

  @override
  Widget build(BuildContext context) {
    // _presenter = new SelfAssessmentCardPresenter(this); //commented because it throws an error
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Scaffold(
          key: scaffoldKey,
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
                      Icons.sentiment_very_satisfied,
                      color: Colors.white,
                      size: 46,
                    ),
                  ),
                  SizedBox(height: size.height * .035),
                  Text(
                    "How are you feeling today?",
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
                        cardName: "Happy",
                        press: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmotionsAssessmentCard(
                                        runningExercise: widget.runningExercise,
                                        fastingSugar: widget.fastingSugar,
                                        happyEmotion: "Happy",
                                      )));
                        },
                      ),
                      LifestylesQuestionCard(
                        imgString: "assets/icons/recordings_menu.png",
                        cardName: "Cool",
                        press: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmotionsAssessmentCard(
                                        runningExercise: widget.runningExercise,
                                        fastingSugar: widget.fastingSugar,
                                        coolEmotion: "Cool",
                                      )));
                        },
                      ),
                    ],
                  ),
                  new Text("${widget.fastingSugar}"),
                  new Text("${widget.starchsMeal}"),
                  new Text("${widget.runningExercise}"),
                  new Text("${widget.coolEmotion}"),
                  SizedBox(height: size.height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      LifestylesQuestionCard(
                        imgString: "assets/icons/recordings_menu.png",
                        cardName: "Sad",
                        press: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmotionsAssessmentCard(
                                        runningExercise: widget.runningExercise,
                                        fastingSugar: widget.fastingSugar,
                                        sadEmotion: "Sad",
                                      )));
                        },
                      ),
                      LifestylesQuestionCard(
                        imgString: "assets/icons/recordings_menu.png",
                        cardName: "Angry",
                        press: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmotionsAssessmentCard(
                                        runningExercise: widget.runningExercise,
                                        fastingSugar: widget.fastingSugar,
                                        angryEmotion: "Angry",
                                      )));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * .20),
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
                            child: Text("FINISH",
                                style:
                                    Theme.of(context).textTheme.title.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1.5,
                                          fontSize: 22.0,
                                        )),
                            onPressed: () {
                              final formState = _formKey.currentState;
                              if (formState.validate()) {
                                formState.save();

                                // saveSelfAssessment(fastingSugar, postBreakfast);

                                print("fastingSugar" + "postBreakfast");

                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            AssessmentScreen()));
                              }
                            },
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
      ),
    );
  }

  @override
  void onSelfAssessmentError(String errorTxt) {
    String mError = "Failed.";
    _showSnackBar(mError);
    setState(() => _isLoading = false);
  }

  @override
  void onSelfAssessmentSuccess() async {
    String mError = "Success.";
    _showSnackBar(mError);
    setState(() => _isLoading = false);
  }

  Future<void> saveSelfAssessment(fastingSugar, postBreakfast) async {
    RestDatasource api = new RestDatasource();
    var response = await api.selfAssessment(fastingSugar, postBreakfast);
    print(response);

    if (int.parse(response) == 200) {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => AssessmentScreen()));

      _showSnackBar("Successfully saved.");
    }
  }
}
