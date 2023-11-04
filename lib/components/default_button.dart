import 'package:flutter/material.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';


class DefaultButton extends StatelessWidget {
  const DefaultButton({
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
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(52),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 0,
            primary: color),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
