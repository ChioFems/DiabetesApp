import 'package:diabetes_assistant/constants.dart';
import 'package:diabetes_assistant/src/screens/Home.dart';
import 'package:diabetes_assistant/src/screens/Education.dart';
import 'package:diabetes_assistant/src/screens/RecordingsQuestionnaire.dart';
import 'package:diabetes_assistant/src/screens/LifestyleMeals.dart';
import 'package:diabetes_assistant/src/screens/Medication.dart';
import 'package:diabetes_assistant/src/screens/LifestylePhysicalActivity.dart';
import 'package:diabetes_assistant/src/screens/Lifestyle.dart';
import 'package:diabetes_assistant/src/screens/recordings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /// To set orientation always portrait
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'DiabAssistant',
      initialRoute: '/home',
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new HomeScreen(),
        '/education': (BuildContext context) => new EducationScreen(),
        '/recordings-questionnaires': (BuildContext context) =>
            new RecordingsQuestionnaire(),
        '/recordings': (BuildContext context) => new RecordingsScreen(),
        '/medication': (BuildContext context) => new MedicationScreen(),
        '/lifestyle': (BuildContext context) => new LifestyleScreen(),
        '/lifestyle-meals': (BuildContext context) => new LifestylesMeals(),
        '/lifestyle-physical-activity': (BuildContext context) =>
            new LifestylesPhysical(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
    );
  }
}
