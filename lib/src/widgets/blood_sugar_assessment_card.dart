import 'package:diabetes_assistant/src/screens/self_assessment.dart';
import 'package:diabetes_assistant/src/widgets/meal_assessment_card.dart';
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
