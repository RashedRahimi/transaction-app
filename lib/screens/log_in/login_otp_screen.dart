import 'package:flutter/material.dart';
import 'package:transaction_guide_app/screens/home_page/home_screen.dart';
import 'package:transaction_guide_app/screens/sign_up/sign_up_screen.dart';

import '../../components/default_button.dart';
import '../../components/no_account_text.dart';
import '../../components/sixDigit&argumentsText.dart';
import '../../constants/constant_texts.dart';
import '../../utilities/size_config.dart';

class LoginOTPScreen extends StatelessWidget {
  const LoginOTPScreen({Key? key}) : super(key: key);
  static String routeName = "/loginotp";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login to app"),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context,SignUpScreen.routeName);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

var map;
var phoneNumber = "";

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // map = ModalRoute.of(context)!.settings.arguments;
    // phoneNumber = map["phoneNumber"];
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textRichArguments(
              text1: "Verify Phone Number\n",
              text2: "Enter the 6-Digit code sent to you at\n",
              text3: phoneNumber,
            ),
            SizedBox(
              height: getProportionateScreenHeight(60),
            ),
            const sixDigitsForm(),
            Spacer(),
            DefaultButton(
                text: kContinue, press: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
            }, color: Color(0xFF00838F)),
            Spacer(
              flex: 2,
            ),
            SizedBox(height: getProportionateScreenHeight(20)),
            NoAccountText(
              text1: kDidntRecieve,
              text2: kResendAgain,
              press: () {},
            ),

            SizedBox(height: getProportionateScreenHeight(20)),
            const Center(
              child: Text(
                kBySigningUp,
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}


