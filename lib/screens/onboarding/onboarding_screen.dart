import 'package:flutter/material.dart';

import 'components/body.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}