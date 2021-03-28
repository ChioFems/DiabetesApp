import 'package:diabetes_assistant/constants.dart';
import 'package:diabetes_assistant/src/screens/home.dart';
import 'package:diabetes_assistant/src/widgets/bottom_nav_bar.dart';
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
      title: 'Diabetes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        fontFamily: "Cairo",
        scaffoldBackgroundColor: kBackgroundColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: BottomNavBar(),
    );
  }
}
