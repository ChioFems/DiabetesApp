import 'package:diabetes_assistant/constants.dart';
import 'package:diabetes_assistant/src/screens/Core/Home.dart';
import 'package:diabetes_assistant/src/screens/Auth/Login.dart';
// import 'package:diabetes_assistant/src/screens/Auth/SignUp.dart';
import 'package:diabetes_assistant/src/screens/Core/Education.dart';
import 'package:diabetes_assistant/src/screens/Core/RecordingsQuestionnaire.dart';
import 'package:diabetes_assistant/src/screens/Core/LifestyleMeals.dart';
import 'package:diabetes_assistant/src/screens/Core/Medication.dart';
import 'package:diabetes_assistant/src/screens/Core/LifestylePhysicalActivity.dart';
import 'package:diabetes_assistant/src/screens/Core/Lifestyle.dart';
import 'package:diabetes_assistant/src/screens/Core/Recordings.dart';
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
      initialRoute: '/login',
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new Login(),
        // '/sign-up': (BuildContext context) => new SignUp(),
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
