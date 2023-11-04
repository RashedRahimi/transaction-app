import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
ThemeData theme() {
  return ThemeData(
    appBarTheme: appBarTheme(),
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme1(),
    //inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
//
// InputDecorationTheme inputDecorationTheme() {
//   OutlineInputBorder outlineInputBorder = OutlineInputBorder(
//     borderRadius: BorderRadius.circular(50.0),
//     borderSide: const BorderSide(color: Colors.black),
//     gapPadding: 8,
//   );
//   // ignore: prefer_const_constructors
//   return InputDecorationTheme(
//     floatingLabelBehavior: FloatingLabelBehavior.always,
//     contentPadding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
//     enabledBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.grey.shade600),
//         borderRadius: BorderRadius.circular(9)),
//     focusedBorder: OutlineInputBorder(
//         borderSide: BorderSide(color: Colors.grey.shade600),
//         borderRadius: BorderRadius.circular(9)),
//     border: OutlineInputBorder(),
//   );
// }

TextTheme textTheme1() {
  return const TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black));
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
    color: Color(0xFF00838F),
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  );
}
