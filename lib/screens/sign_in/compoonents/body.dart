// import 'package:flutter/material.dart';
// import 'package:transaction_guide_app/components/header_text.dart';
// import 'package:transaction_guide_app/components/social_media_button.dart';
// import 'package:transaction_guide_app/constants/constant_texts.dart';
// import 'package:transaction_guide_app/utilities/size_config.dart';
//
// import '../../../components/default_button.dart';
// import '../../../components/no_account_text.dart';
// import '../../forgot_password/forgot_password_screen.dart';
// import '../../sign_up/sign_up_screen.dart';
//
// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);
//
//   @override
//   State<Body> createState() => _BodyState();
// }
//
//
//
// class _BodyState extends State<Body> {
//   @override
//   Widget build(BuildContext context) {
//     return
//   }
// }
//
// class customeTextField extends StatelessWidget {
//   const customeTextField({
//     Key? key,
//     this.onChange,
//     this.errorText,
//     this.isErrorExist,
//     this.isTextObsecure,
//     this.hintText,
//     this.keyboardType,
//   }) : super(key: key);
//   final onChange;
//   final errorText;
//   final isErrorExist;
//   final isTextObsecure;
//   final hintText;
//   final keyboardType;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           width: double.infinity,
//           height: 60,
//           child: TextField(
//             onChanged: onChange,
//             obscureText: isTextObsecure,
//             keyboardType: keyboardType,
//             decoration: InputDecoration(
//               hintText: hintText,
//               enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                       color: isErrorExist ? Colors.red : Colors.grey)),
//               contentPadding: EdgeInsets.symmetric(
//                   horizontal: getProportionateScreenWidth(20),
//                   vertical: getProportionateScreenHeight(10)),
//             ),
//           ),
//         ),
//         errorList.contains(errorText)
//             ? Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Text(
//                   errorText,
//                   style: const TextStyle(color: Colors.red, fontSize: 18),
//                 ),
//               )
//             : const SizedBox()
//       ],
//     );
//   }
// }
