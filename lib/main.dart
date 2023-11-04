import 'dart:async';

import 'package:flutter/material.dart';
import 'package:transaction_guide_app/routes.dart';
import 'package:transaction_guide_app/screens/onboarding/onboarding_screen.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';

import 'constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static String routeName = "/onboarding";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: routes,
      theme:theme(),
      home: MyHomePage(),
    );
  }
}
// --- LAUNCH SCREEN CODE SECTION ---

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  static String routeName = "/onboarding";

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 4),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OnboardingScreen(),
          //HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //Future.delayed(Duration(seconds: 4),);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/splash_screen.jpg"))),
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Text(
          "Welcome to Rahimi \n Real Estate ",
          style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
