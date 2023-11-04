import 'package:flutter/material.dart';

import 'package:transaction_guide_app/utilities/size_config.dart';


class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key? key,
    required this.text,
    required this.press,
    required this.color,
  }) : super(key: key);
  final String text;
  final VoidCallback press;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: getProportionateScreenHeight(50),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
