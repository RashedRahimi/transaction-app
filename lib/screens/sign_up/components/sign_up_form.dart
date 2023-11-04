import 'package:flutter/material.dart';
import 'package:transaction_guide_app/screens/log_in/login_otp_screen.dart';

import '../../../components/default_button.dart';
import '../../../components/no_account_text.dart';
import '../../../components/social_media_button.dart';
import '../../../constants/constant_texts.dart';
import '../../../utilities/size_config.dart';
import '../../sign_in/sign_in_screen.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool passwordObsebureText = false;
  bool confirmPassObsebureText = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: kFullName,
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: kEmailAddress,
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          TextFormField(
            obscureText: !passwordObsebureText,
            decoration: InputDecoration(
              hintText: kPasswordHint,
              hintStyle: TextStyle(color: Colors.grey),
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      passwordObsebureText = !passwordObsebureText;
                    });
                  },
                  child: Icon(
                    passwordObsebureText
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined,
                    color: Colors.grey,
                  )),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          TextFormField(
            obscureText: !confirmPassObsebureText,
            decoration: InputDecoration(
              hintText: kConfirmPass,
              hintStyle: TextStyle(color: Colors.grey),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    confirmPassObsebureText = !confirmPassObsebureText;
                  });
                },
                child: Icon(
                  confirmPassObsebureText
                      ? Icons.remove_red_eye
                      : Icons.remove_red_eye_outlined,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.04,
          ),
          DefaultButton(
              text: kSIGNUP,
              press: () {
                Navigator.pushNamed(context, LoginOTPScreen.routeName);
              },
              color: Color(0xFF00838F)),
          SizedBox(height: getProportionateScreenHeight(20)),
          NoAccountText(
            text1: kAlreadyAccount,
            text2: kSignin,
            press: () {
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          Text(
            kBySigningUp,
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.015),
          Text(
            kOr,
            style: TextStyle(color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.015),
          SocialMediaButton(
            text: kFACEBOOKCONNECT,
            press: () {},
            color: Color(0xFF00838F),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.015),
          SocialMediaButton(
            text: kGOOGLECONNECT,
            press: () {},
            color: Color(0xFF00838F),
          ),
        ],
      ),
    );
  }
}
