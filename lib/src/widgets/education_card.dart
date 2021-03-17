import 'package:flutter/material.dart';

import '../../constants.dart';

class EducationCard extends StatelessWidget {
  final String educationName;
  final bool isDone;
  final Function press;
  const EducationCard({
    Key key,
    this.educationName,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 2 -
            10, // constraint.maxWidth provides the available width for this widget
        //padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
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
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 42,
                    width: 43,
                    decoration: BoxDecoration(
                      color: isDone ? kEducationColor : Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: kEducationColor),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: isDone ? Colors.white : kEducationColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    educationName,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
