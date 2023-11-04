import 'package:flutter/material.dart';

import 'package:transaction_guide_app/utilities/size_config.dart';

import 'coustome_text_field.dart';



class sixDigitsForm extends StatelessWidget {
  const sixDigitsForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(55),
          height: getProportionateScreenHeight(65),
          child: const customeTextField(),
        ),
        SizedBox(
          width: getProportionateScreenWidth(55),
          height: getProportionateScreenHeight(65),
          child: const customeTextField(),
        ),
        SizedBox(
          width: getProportionateScreenWidth(55),
          height: getProportionateScreenHeight(65),
          child: const customeTextField(),
        ),
        SizedBox(
          width: getProportionateScreenWidth(55),
          height: getProportionateScreenHeight(65),
          child: const customeTextField(),
        ),
        SizedBox(
          width: getProportionateScreenWidth(55),
          height: getProportionateScreenHeight(65),
          child: const customeTextField(),
        ),
        SizedBox(
          width: getProportionateScreenWidth(55),
          height: getProportionateScreenHeight(65),
          child: const customeTextField(),

        ),
      ],
    );
  }
}

class textRichArguments extends StatelessWidget {
  const textRichArguments({
    Key? key,required this.text1,required this.text2,required this.text3,
  }) : super(key: key);
  final String text1,text2,text3;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text1,
        style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            height: 1.5),
        children: [
          TextSpan(
            text: text2,
            style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                height: 1.5),
            children: [
              TextSpan(
                text: text3,
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
