import 'package:email_validator/email_validator.dart';

const String kOnboardingTitle1 = "All your favorites";
const String kOnboardingDescription1 =
    "You can find the best properties with the lowest prices \in any geographical location in this app";
const String kOnboardingTitle2 = "Our Motto";
const String kOnboardingDescription2 = "Experience the best with َUs";
const String kGETSTARTED = "GET STARTED";
const String kSignInTitle = "Welcome to";
const String kSignInDescription =
    "Enter your phone number or email\naddress for sign in, Enjoy your food";
const String kEmailAddress = "Email Address";
const String kPasswordHint = "Password";
const String kPhoneNumber = "Phone Number";
const String kForgotPassword = "Forgot Password";
const String kSIGNIN = "SIGN IN";
const String kSignIn = "Sign In";
const String kSignin = "Sign in";
const String kSignup = "Sign up";
const String kSignUp = "Sign Up";
const String kSIGNUP = "SIGN UP";
const String kDontHaveAccount = "Dont't have an account?";
const String kAlreadyAccount = "Already have an account?";
const String kCreateAccount = "Create account";
const String kFACEBOOKCONNECT = "CONNECT WITH FACEBOOK";
const String kGOOGLECONNECT = "CONNECT WITH GOOGLE";
























const String kForgotPassDescription =
    "Enter your email address and we will\nsend you a reset instructions";
const String kRESSETPASSWORD = "RESET PASSWORD";

const String kLoginToFoodly = "Login to Foodly";
const String kLoginFoodlyHeaderTitle = "Get started with \nFoodly";
const String kLoginFoodlyDescription =
    "Enter your phone number to use foodly\n and enjoy your food :)";

const String kSignUpHeaderTitle = "Create Account";
const String kSignUpDescription =
    "Enter your Name, Email and Password\n for sign up";
const String kFullName = "Full Name";
const String kConfirmPass = "Confirm Password";
const String kBySigningUp =
    "By Signing up you agree to our Terms,\n Conditions & Privacy Policy";
const String kOr = "Or";
const String kContinue = "Continue";

const String kVerifyNumber = "Verify Phone Number";
const String kVerifyNumberDesc = "Enter the 6-Digit code sent to you at\n";
const String kDidntRecieve = "Didn't recieve the code ?";
const String kResendAgain = "Resend Again";
const String kVerifyEmailHeaderText = "Verify Email Address";
const String kVerifyEmailDesc = "Enter the 6-Digit code sent to you at\n";

const String kEmailError = "Email is incorrect!";
const String kPasswordError = "Password is incorrect!";
const String kEmailEmptyError = "Email is Empty";
const String kPasswordEmptyError = "Enter an Email!";
const String kEmptyError = "Enter an Email!";
const String kInvalidError = "Enter a valid Email Address";



const String kFeaturedPartners = "Featured Partners";
const String kBestPicks = "Best Picks";
const String kSeeAll = "See all";
const String kAllRestaurants = "All Restaurants";
const String kDELIVERYTO = "DELIVERY TO";
const String kSanFran = "San Francisco";



// Validator . . .
List errorList = [];

bool emailValidator(String emailAddress) {
  if (emailAddress != "") {
    if (errorList.contains(kEmailEmptyError)) {
      errorList.remove(kEmptyError);
    }
    if (EmailValidator.validate(emailAddress)) {
      if (errorList.contains(kInvalidError)) {
        errorList.remove(kInvalidError);
      }
      return false;
    } else {
      if (!errorList.contains(kInvalidError)) {
        errorList.add(kInvalidError);
      }
      return true;
    }
  } else {
    if (!errorList.contains(kEmptyError)) {
      errorList.add(kEmptyError);
    }
    return true;
  }
}

bool passwordValidator(String password){
  if(password != ""){
    if(errorList.contains(kPasswordEmptyError)){
      errorList.remove(kPasswordEmptyError);
    }
    if(password.length >= 8){
      if(errorList.contains(kPasswordError)){
        errorList.remove(kPasswordError);
      }
      return false;
    }else{
      if(!errorList.contains(kPasswordError)){
        errorList.add(kPasswordError);
      }
      return true;
    }
  }else{
    if(!errorList.contains(kPasswordEmptyError)){
      errorList.add(kPasswordEmptyError);
    }
    return true;
  }
}

