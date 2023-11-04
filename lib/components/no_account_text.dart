import 'package:flutter/material.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
    required this.text1,
    required this.text2,
    required this.press,
  }) : super(key: key);
  final String text1, text2;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: const TextStyle(color: Colors.blueGrey),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: press,
          child: Text(
            text2,
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
