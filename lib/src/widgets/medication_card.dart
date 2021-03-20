import 'package:flutter/material.dart';

import '../../constants.dart';

class MedicationCard extends StatelessWidget {
  final String recordingName;
  final Function press;
  const MedicationCard({
    Key key,
    this.recordingName,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return Container(
        width: constraint.maxWidth / 1 +
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
                    child: Icon(
                      Icons.local_drink,
                      color: kMedicationColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    recordingName,
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
