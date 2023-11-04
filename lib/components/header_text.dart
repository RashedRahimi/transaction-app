import 'package:flutter/material.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';


class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,required this.title,required this.subtitle,
  }) : super(key: key);
  final String title,subtitle;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
          text: "$title\n",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(33),
              fontWeight: FontWeight.w400,
              height: 1.5),
          children: [
            TextSpan(
                text:
                subtitle,
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(15),
                    color: Colors.grey))
          ]),
    );
  }
}
