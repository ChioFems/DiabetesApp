import 'package:diabetes_assistant/src/data/rest_data_service.dart';
import 'package:diabetes_assistant/src/presenters/self_assessment_card.dart';
import 'package:diabetes_assistant/src/screens/self_assessment.dart';
import 'package:diabetes_assistant/src/widgets/lifestyles_question_card.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

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
                        imgString: "assets/icons/happy_emotion.png",
                        cardName: "Happy",
                        press: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmotionsAssessmentCard(
                                        happyEmotion: "Happy",
                                        coolEmotion: widget.coolEmotion,
                                        sadEmotion: widget.sadEmotion,
                                        angryEmotion: widget.angryEmotion,
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
                                        swimmingExercise:
                                            widget.swimmingExercise,
                                        cyclingExercise: widget.cyclingExercise,
                                        walkingExercise: widget.walkingExercise,
                                        acrobaticsExercise:
                                            widget.acrobaticsExercise,
                                        gymnasticsExercise:
                                            widget.gymnasticsExercise,
                                      )));
                        },
                      ),
                      LifestylesQuestionCard(
                        imgString: "assets/icons/cool_emotion.png",
                        cardName: "Cool",
                        press: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmotionsAssessmentCard(
                                        coolEmotion: "Cool",
                                        happyEmotion: widget.happyEmotion,
                                        sadEmotion: widget.sadEmotion,
                                        angryEmotion: widget.angryEmotion,
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
                                        swimmingExercise:
                                            widget.swimmingExercise,
                                        cyclingExercise: widget.cyclingExercise,
                                        walkingExercise: widget.walkingExercise,
                                        acrobaticsExercise:
                                            widget.acrobaticsExercise,
                                        gymnasticsExercise:
                                            widget.gymnasticsExercise,
                                      )));
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: size.height * .02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      LifestylesQuestionCard(
                        imgString: "assets/icons/sad_emotion.png",
                        cardName: "Sad",
                        press: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmotionsAssessmentCard(
                                        sadEmotion: "Sad",
                                        coolEmotion: widget.coolEmotion,
                                        happyEmotion: widget.happyEmotion,
                                        angryEmotion: widget.angryEmotion,
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
                                        swimmingExercise:
                                            widget.swimmingExercise,
                                        cyclingExercise: widget.cyclingExercise,
                                        walkingExercise: widget.walkingExercise,
                                        acrobaticsExercise:
                                            widget.acrobaticsExercise,
                                        gymnasticsExercise:
                                            widget.gymnasticsExercise,
                                      )));
                        },
                      ),
                      LifestylesQuestionCard(
                        imgString: "assets/icons/angry_emotion.png",
                        cardName: "Angry",
                        press: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EmotionsAssessmentCard(
                                        angryEmotion: "Angry",
                                        coolEmotion: widget.coolEmotion,
                                        sadEmotion: widget.sadEmotion,
                                        happyEmotion: widget.happyEmotion,
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
                                        swimmingExercise:
                                            widget.swimmingExercise,
                                        cyclingExercise: widget.cyclingExercise,
                                        walkingExercise: widget.walkingExercise,
                                        acrobaticsExercise:
                                            widget.acrobaticsExercise,
                                        gymnasticsExercise:
                                            widget.gymnasticsExercise,
                                      )));
                        },
                      ),
                    ],
                  ),
                  /* new Text("${widget.fastingSugar}"),
                  new Text("${widget.postBreakfast}"),
                  new Text("${widget.postLunch}"),
                  new Text("${widget.bedtimeSugar}"),
                  new Text("${widget.starchsMeal}"),
                  new Text("${widget.vegetablesMeal}"),
                  new Text("${widget.diaryMeal}"),
                  new Text("${widget.fatsMeal}"),
                  new Text("${widget.proteinMeal}"),
                  new Text("${widget.runningExercise}"),
                  new Text("${widget.swimmingExercise}"),
                  new Text("${widget.cyclingExercise}"),
                  new Text("${widget.walkingExercise}"),
                  new Text("${widget.acrobaticsExercise}"),
                  new Text("${widget.gymnasticsExercise}"),
                  new Text("${widget.happyEmotion}"),
                  new Text("${widget.coolEmotion}"),
                  new Text("${widget.sadEmotion}"),
                  new Text("${widget.angryEmotion}"),*/
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

                                /* Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => BottomNavBar()));*/
                                Navigator.of(context)
                                    .popUntil((route) => route.isFirst);
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
