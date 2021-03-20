import 'package:diabetes_assistant/src/widgets/lifestyles_question_card.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class LifestylesMeals extends StatelessWidget {
  final String qnsText;
  final Function save;
  const LifestylesMeals({
    Key key,
    this.qnsText,
    this.save,
  }) : super(key: key);

  createAlertDialog(BuildContext context, Key key) {
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
                InkWell(
                  onTap: () {
                    Navigator.pop(context, key);
                  },
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    key: key,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kLifestyleColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text("Small",
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: Colors.white,
                              )),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context, key);
                  },
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    key: key,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kLifestyleColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text("Medium",
                          style: Theme.of(context).textTheme.title.copyWith(
                                color: Colors.white,
                              )),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context, key);
                  },
                  child: Container(
                    // width: MediaQuery.of(context).size.width,
                    key: key,
                    height: 50,
                    decoration: BoxDecoration(
                      color: kLifestyleColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Text("Large",
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
                SizedBox(height: size.height * .05),
                Container(
                  height: 92,
                  width: 93,
                  decoration: BoxDecoration(
                    color: kLifestyleLightColor,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.hourglass_empty,
                    color: Colors.white,
                    size: 46,
                  ),
                ),
                SizedBox(height: size.height * .05),
                Text(
                  qnsText,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: size.height * .03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Starch",
                      press: () {
                        createAlertDialog(context, key);
                      },
                    ),
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Vegetables",
                      press: () {
                        createAlertDialog(context, key);
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
                      cardName: "Diary",
                      press: () {
                        createAlertDialog(context, key);
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
                        createAlertDialog(context, key);
                      },
                    ),
                    LifestylesQuestionCard(
                      imgString: "assets/icons/recordings_menu.png",
                      cardName: "Protein",
                      press: () {
                        createAlertDialog(context, key);
                      },
                    ),
                  ],
                ),
                SizedBox(height: size.height * .03),
                Column(
                  children: <Widget>[
                    InkWell(
                      onTap: save,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: kLifestyleColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Center(
                          child: Text("SAVE",
                              style: Theme.of(context).textTheme.title.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1.5,
                                    fontSize: 22.0,
                                  )),
                        ),
                      ),
                    ),
                    SizedBox(height: size.height * .01),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50.0,
                        child: Center(
                          child: Text("CANCEL",
                              style: Theme.of(context).textTheme.title.copyWith(
                                    color: kLifestyleLightColor,
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
