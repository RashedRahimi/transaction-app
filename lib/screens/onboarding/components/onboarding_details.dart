import 'package:flutter/material.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';

class OnboardingDetails extends StatelessWidget {
  const OnboardingDetails({
    Key? key,
    required this.text,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String text, image, title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: getProportionateScreenHeight(400),
            width: getProportionateScreenWidth(300),
          ),
          SizedBox(
            height:getProportionateScreenHeight(2),
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.black87,
                fontSize: getProportionateScreenWidth(30),
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.015,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: Colors.grey,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
