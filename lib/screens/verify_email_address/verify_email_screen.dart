import 'package:flutter/material.dart';
import 'package:transaction_guide_app/components/default_button.dart';
import 'package:transaction_guide_app/components/no_account_text.dart';
import 'package:transaction_guide_app/components/sixDigit&argumentsText.dart';
import 'package:transaction_guide_app/constants/constant_texts.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';
class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);
  static String routeName = "/verifyEmail";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        title: Text(kVerifyEmailHeaderText),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

var map;
var emailAddress;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    map = ModalRoute.of(context)!.settings.arguments;
    emailAddress = map["emailAddress"];
    return SafeArea(
      child: WillPopScope(
        onWillPop: () {
          return Future.value(false);
        },
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textRichArguments(
                  text1: "$kVerifyEmailHeaderText\n",
                  text2: kVerifyEmailDesc,
                  text3: emailAddress),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              sixDigitsForm(),
              SizedBox(height: getProportionateScreenHeight(25)),
              DefaultButton(text: kContinue, press: () {}, color: Colors.green),
              SizedBox(
                height: 20,
              ),
              NoAccountText(
                text1: kDidntRecieve,
                text2: kResendAgain,
                press: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
