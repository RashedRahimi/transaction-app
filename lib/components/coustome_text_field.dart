import 'package:flutter/material.dart';

import 'package:transaction_guide_app/constants/constant_texts.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';

class customeTextField extends StatelessWidget {
  const customeTextField({
    Key? key,
    this.errorText,
    this.validatorErrorText,
    this.onChange,
    this.hintText,
    this.suffixIcon,
    this.suffixIconTap,
    this.keyboardInputType,
    this.isObsecureText,
  }) : super(key: key);
  final errorText;
  final validatorErrorText;
  final onChange;
  final hintText;
  final suffixIcon;
  final suffixIconTap;
  final keyboardInputType;
  final isObsecureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 60,
          child: TextField(
            keyboardType: keyboardInputType,
            onChanged: onChange,
            style: TextStyle(fontSize: getProportionateScreenWidth(16)),
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                child: suffixIcon,
                onTap: suffixIconTap,
              ),
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)),
              focusedBorder: OutlineInputBorder(),
              contentPadding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenHeight(15),
              ),
            ),
          ),
        ),
        errorList.contains(errorText)
            ? Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            validatorErrorText,
            style: const TextStyle(color: Colors.red, fontSize: 18),
          ),
        )
            : const SizedBox(),
      ],
    );
  }
}
