import 'package:flutter/material.dart';

import '../utilities/size_config.dart';
import 'constant_texts.dart';

List onboardingItems = [
  {
    "image": "assets/images/onboarding1.jpg",
    "title": kOnboardingTitle1,
    "text": kOnboardingDescription1,
  },
  {
    "image": "assets/images/onboarding2.jpg",
    "title": kOnboardingTitle2,
    "text": kOnboardingDescription2,
  },
];
List settingList = [
  {
    'icon': Icon(
      Icons.supervisor_account_outlined,
      size: 35,
    ),
    'title': "Sellers",
    'subTitle': "Find the homes ",
  },
  {
    'icon': Icon(
      Icons.note_alt_outlined,
      size: 35,
    ),
    'title': "Choose Home",
    'subTitle': "Select your interested category",
  },
  {
    'icon': Icon(
      Icons.wb_sunny_outlined,
      size: 35,
    ),
    'title': "Select Theme",
    'subTitle': "Choose your app theme",
  },
  {
    'icon': Icon(
      Icons.notifications_none_rounded,
      size: 35,
    ),
    'title': "Push Notification",
    'subTitle': "Enable/Disable push notification",
  }
];
List subSettingList = [
  "Rate us",
  "Privacy Policy",
  "Term and condition",
  "About us"
];
