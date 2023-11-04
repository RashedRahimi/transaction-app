
import 'package:flutter/widgets.dart';
import 'package:transaction_guide_app/main.dart';
import 'package:transaction_guide_app/screens/buy/buy_screen.dart';
import 'package:transaction_guide_app/screens/buy/details_screen.dart';
import 'package:transaction_guide_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:transaction_guide_app/screens/home_page/home_screen.dart';
import 'package:transaction_guide_app/screens/log_in/login_otp_screen.dart';
import 'package:transaction_guide_app/screens/mortgage/mortgage_screen.dart';
import 'package:transaction_guide_app/screens/rent/rent_screen.dart';
import 'package:transaction_guide_app/screens/setting/setting_screen.dart';
import 'package:transaction_guide_app/screens/sign_in/sign_in_screen.dart';
import 'package:transaction_guide_app/screens/sign_up/sign_up_screen.dart';
import 'package:transaction_guide_app/screens/verify_email_address/verify_email_screen.dart';

final Map<String, WidgetBuilder> routes = {
  MyHomePage.routeName:(context) =>MyHomePage(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  // LoginToScreen.routeName: (context) => LoginToScreen(),
  LoginOTPScreen.routeName: (context) => LoginOTPScreen(),
  VerifyEmailScreen.routeName: (context) => VerifyEmailScreen(),
  HomeScreen.routeName:(context) => HomeScreen(),
  LoginOTPScreen.routeName:(context) => LoginOTPScreen(),
  BuyScreen.routeName:(context) => BuyScreen(),
  RentScreen.routeName:(context) => RentScreen(),
  MortgageScreen.routeName:(context) => MortgageScreen(),
  SettingScreen.routeName:(context) => SettingScreen(),
  BuyDetailsScreen.routeName:(context) => BuyDetailsScreen(),
};