import 'package:flutter/material.dart';

import '../../constants.dart';

class RecordingsQuestionnaire extends StatelessWidget {
  const RecordingsQuestionnaire({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Form(
      child: Scaffold(
        body: Container(
          child: TextField(
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              labelText: "Fasting Glucose",
              labelStyle: TextStyle(
                  fontFamily: "Sans",
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w300),
            ),
            readOnly: false,
            keyboardType: TextInputType.text,
            autocorrect: false,
            autofocus: false,
            enableSuggestions: false,
          ),
          /*color: Colors.white,
           child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 30),
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
                SizedBox(height: 30),
                Text(
                  "What is your fasting blood sugar?",
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .title
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(height: 60),
                Row(
                  children: <Widget>[
                    TextField(
                      textAlign: TextAlign.start,
                      decoration: InputDecoration(
                        labelText: "Fasting Glucose",
                        labelStyle: TextStyle(
                            fontFamily: "Sans",
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w300),
                      ),
                      readOnly: false,
                      keyboardType: TextInputType.text,
                      autocorrect: false,
                      autofocus: false,
                      enableSuggestions: false,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "mmol/L",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                Container(
                  height: size.height * .40,
                  color: Colors.amber,
                ),
                SizedBox(height: 30),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: kRecordingsColor,
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
                SizedBox(height: 10),
                Positioned(
                  child: Text(
                    "CANCEL",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.title.copyWith(
                          color: kRecordingsLightColor,
                          letterSpacing: 3.0,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ),
              ],
            ),
          ),*/
        ),
      ),
    );
  }
}
