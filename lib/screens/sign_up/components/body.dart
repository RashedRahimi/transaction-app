import 'package:flutter/material.dart';
import 'package:transaction_guide_app/screens/sign_up/components/sign_up_form.dart';

import '../../../components/header_text.dart';
import '../../../constants/constant_texts.dart';
import '../../../utilities/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: HeaderText(
                title: kSignUpHeaderTitle,
                subtitle: kSignUpDescription),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            child: SignUpForm(),
          ),
          SizedBox(height: SizeConfig.screenHeight * 0.05,)
        ],
      ),
    );
  }
}
