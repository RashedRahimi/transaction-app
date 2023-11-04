import 'package:flutter/material.dart';
import 'package:transaction_guide_app/constants/constant_texts.dart';
import 'package:transaction_guide_app/constants/constants.dart';


import '../../components/coustome_text_field.dart';
import '../../components/default_button.dart';
import '../../components/header_text.dart';
import '../../components/no_account_text.dart';
import '../../components/social_media_button.dart';
import '../../utilities/size_config.dart';
import '../forgot_password/forgot_password_screen.dart';
import '../home_page/home_screen.dart';
import '../sign_up/sign_up_screen.dart';
import 'compoonents/body.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen(
      {Key? key,
      this.onChange,
      this.errorText,
      this.isErrorExist,
      this.isTextObsecure,
      this.hintText,
      this.keyboardType})
      : super(key: key);
  static String routeName = "/signin";
  final onChange;
  final errorText;
  final isErrorExist;
  final isTextObsecure;
  final hintText;
  final keyboardType;

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  var isPasswordVisible = false,
      isErrorExistsOnEmailAddress = false,
      isErrorExistsOnPassword = false,
      isSignInButtonClicked = false;
  var emailAddress = '', password = '';
  bool passwordObsebureText = false;
  bool confirmPassObsebureText = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kSignIn),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: HeaderText(
                    title: kSignInTitle, subtitle: kSignInDescription),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(

                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          hintText: "email address", border: OutlineInputBorder(),
                        suffixIcon: Icon(Icons.email_outlined),
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder()
                      ),
                    ),
                    kSizedBox,
                    TextField(
                      obscureText: !passwordObsebureText,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                          hintText: "password",
                          border: OutlineInputBorder(),
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
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder()
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ForgotPasswordScreen.routeName);
                    },
                    child: Text("$kForgotPassword ?")),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: DefaultButton(
                      text: kSIGNIN,
                      press: () async {
                        isSignInButtonClicked = true;
                        setState(() {
                          isErrorExistsOnEmailAddress =
                              emailValidator(emailAddress);
                          isErrorExistsOnPassword = passwordValidator(password);
                        });
                       // if (errorList.isEmpty) {
                        Navigator.pushNamedAndRemoveUntil(context,HomeScreen.routeName, (route) => false);
                        },
                      //},
                      color: Color(0xFF00838F),
                    )),
              ),
              SizedBox(height: 25),
              Center(child: Text(kOr)),
              SizedBox(height: 25),
              NoAccountText(
                text1: kDontHaveAccount,
                text2: kCreateAccount,
                press: () {
                  Navigator.pushNamed(context, SignUpScreen.routeName);
                },
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: SocialMediaButton(
                    text: kFACEBOOKCONNECT, press: () {}, color: Color(0xFF00838F)),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: SocialMediaButton(
                    text: kGOOGLECONNECT,
                    press: () {},
                    color: Color(0xFF00838F)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
