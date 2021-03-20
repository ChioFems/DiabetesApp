import 'package:flutter/material.dart';

import '../../constants.dart';

class RecordingsQuestionnaire extends StatelessWidget {
  final String qnsText;
  final Function save;
  const RecordingsQuestionnaire({
    Key key,
    this.qnsText,
    this.save,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Form(
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
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
                    qnsText,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(height: size.height * .03),
                  Container(
                    width: size.width * .35,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: kShadowColor),
                            cursorColor: kShadowColor,
                            keyboardType: TextInputType.number,
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
                    height: size.height * .35,
                  ),
                  Column(
                    children: <Widget>[
                      InkWell(
                        onTap: save,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: kRecordingsColor,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Text("SAVE",
                                style:
                                    Theme.of(context).textTheme.title.copyWith(
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
                                style:
                                    Theme.of(context).textTheme.title.copyWith(
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
      ),
    );
  }
}
