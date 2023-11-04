import 'package:flutter/material.dart';
import 'package:transaction_guide_app/components/default_button.dart';
import 'package:transaction_guide_app/screens/log_in/login_otp_screen.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';

import '../../../constants/constant_texts.dart';
import '../../log_in/log_in_to_foodly_screen.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

var isPasswordVisible = false;
var emailAddress = "";
var password = "";

class _SignInFormState extends State<SignInForm> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        EmailTextFormField(),
        SizedBox(
          height: getProportionateScreenHeight(10),
        ),
        PasswordTextField(),
        GestureDetector(
          onTap: () {},
          child: Text(
            "$kForgotPassword",
            style: TextStyle(fontSize: getProportionateScreenWidth(12)),
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(17)),
        DefaultButton(
          text: kSIGNIN,
          color: const Color(0XFF66BB6A),
          press: () async {
            emailValidator(emailAddress);
            // passwordValidator(password);
            setState(() {
              if(errorList.isEmpty){
                Navigator.pushNamedAndRemoveUntil(context, LoginOTPScreen.routeName, (route) => false);
              }
            });
          },
        ),
      ],
    ));
  }

  TextFormField EmailTextFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: kEmailAddress,
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }

  TextFormField PasswordTextField() {
    return TextFormField(
      obscureText: !obscureText,
      // ignore: prefer_const_constructors
      decoration: InputDecoration(
        hintText: kPasswordHint,
        hintStyle: TextStyle(color: Colors.grey),
        // ignore: prefer_const_constructors
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              obscureText = !obscureText;
            });
          },
          child: Icon(
            obscureText ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
