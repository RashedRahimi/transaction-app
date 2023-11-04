import 'package:flutter/material.dart';

import '../../constants/constant_texts.dart';
import 'components/body.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static String routeName = "/signup";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: Text(kSignUp),
        ),
        body: Body(),
      ),
    );
  }
}
