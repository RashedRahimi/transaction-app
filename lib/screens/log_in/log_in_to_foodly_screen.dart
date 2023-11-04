// import 'package:flutter/material.dart';
//
// import '../../components/default_button.dart';
// import '../../components/header_text.dart';
// import '../../constants/constant_texts.dart';
// import '../../utilities/size_config.dart';
// import '../sign_in/sign_in_screen.dart';
// import 'login_otp_screen.dart';
//
// class LoginToScreen extends StatelessWidget {
//   const LoginToScreen({Key? key}) : super(key: key);
//   static String routeName = "/loginfoodly";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(kLoginToFoodly),
//         leading: GestureDetector(
//           onTap: () {
//             Navigator.pushNamed(context, SignInScreen.routeName);
//           },
//           child: const Icon(
//             Icons.arrow_back_rounded,
//           ),
//         ),
//       ),
//       body: Body(),
//     );
//   }
// }
//
// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   _BodyState createState() => _BodyState();
// }
//
// var phoneNumber;
//
// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () {
//         return Future.value(false);
//       },
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         // ignore: prefer_const_literals_to_create_immutables
//         children: [
//           // ignore: prefer_const_constructors
//           Padding(
//             padding: EdgeInsets.symmetric(
//                 horizontal: getProportionateScreenWidth(20)),
//             child: const HeaderText(
//               title: kLoginFoodlyHeaderTitle,
//               subtitle: kLoginFoodlyDescription,
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.symmetric(
//                 horizontal: getProportionateScreenWidth(20),
//                 vertical: getProportionateScreenHeight(45)),
//             child: Form(
//               child: Column(
//                 children: [
//                   TextFormField(
//                     onChanged: (value) {
//                       phoneNumber = value;
//                     },
//                     keyboardType: TextInputType.number,
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                     decoration: const InputDecoration(
//                       hintText: kPhoneNumber,
//                       hintStyle: TextStyle(fontWeight: FontWeight.normal),
//                       enabledBorder: OutlineInputBorder(),
//                       focusedBorder: OutlineInputBorder(
//                         borderSide: BorderSide(color: Colors.grey),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: SizeConfig.screenHeight * 0.05),
//                   DefaultButton(
//                     text: kSIGNUP,
//                     press: () {
//                       Navigator.pushNamed(context, LoginOTPScreen.routeName,
//                           arguments: {"phoneNumber": phoneNumber});
//                     },
//                     color: Color(0xFF00838F),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
