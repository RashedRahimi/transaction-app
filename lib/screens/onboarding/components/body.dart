import 'package:flutter/material.dart';
import 'package:transaction_guide_app/components/default_button.dart';
import 'package:transaction_guide_app/constants/constant_texts.dart';
import 'package:transaction_guide_app/constants/list.dart';
import 'package:transaction_guide_app/screens/onboarding/components/onboarding_details.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';

import '../../sign_in/sign_in_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(0.08),
            ),
            Expanded(
              flex: 6,
              child: PageView.builder(
                itemCount: onboardingItems.length,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemBuilder: (context, index) => OnboardingDetails(
                  image: onboardingItems[index]["image"],
                  title: onboardingItems[index]["title"],
                  text: onboardingItems[index]["text"],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          onboardingItems.length,
                          (index) => scrollDots(index: index),
                        ),
                      ],
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    DefaultButton(
                      color: const Color(0xFF00838F),
                      press: () {
                        Navigator.pushNamed(context, SignInScreen.routeName);
                      },
                      text: kGETSTARTED,
                    ),
                    const Spacer(
                      flex: 2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer scrollDots({required int index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: const EdgeInsets.only(right: 5),
      width: currentPage == index ? 12 : 7,
      height: 7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: currentPage == index ? Color(0xFF00838F): Colors.black12,
      ),
    );
  }
}
