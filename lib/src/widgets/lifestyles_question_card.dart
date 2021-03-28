import 'package:diabetes_assistant/constants.dart';
import 'package:flutter/material.dart';

class LifestylesQuestionCard extends StatelessWidget {
  final String imgString;
  final String cardName;
  final Function press;
  const LifestylesQuestionCard({
    Key key,
    this.imgString,
    this.cardName,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kBackgroundColor,
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
      child: GestureDetector(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            children: <Widget>[
              //Icon(Icons.hourglass_empty, color: Colors.white),
              Image.asset(imgString, height: 65),
              Spacer(),
              Text(
                cardName,
                textAlign: TextAlign.center,
                softWrap: true,
                maxLines: 2,
                overflow: TextOverflow.clip,
                style: Theme.of(context).textTheme.title.copyWith(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
