import 'package:flutter/material.dart';
import 'package:transaction_guide_app/constants/constants.dart';

import '../../components/default_button.dart';
import '../../components/header_text.dart';
import '../../constants/constant_texts.dart';
import '../../utilities/size_config.dart';
import '../verify_email_address/verify_email_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forgotpass";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kForgotPassword),
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

var emailAddress;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderText(
              title: kForgotPassword, subtitle: kForgotPassDescription),
          SizedBox(
            height: SizeConfig.screenWidth * 0.1,
          ),
          Form(
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) {
                    emailAddress = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: kEmailAddress,
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.screenWidth * 0.04,
                ),
                DefaultButton(
                    text: kRESSETPASSWORD,
                    press: () {
                      Navigator.pushNamed(context, VerifyEmailScreen.routeName,
                          arguments: {"emailAddress": emailAddress});
                    },
                    color: kprimaryColor)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
