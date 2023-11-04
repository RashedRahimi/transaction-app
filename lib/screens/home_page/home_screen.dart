import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:transaction_guide_app/constants/suggestion_list.dart';
import 'package:transaction_guide_app/screens/buy/buy_screen.dart';
import 'package:transaction_guide_app/screens/setting/setting_screen.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';

import '../../constants/item_model.dart';
import '../mortgage/mortgage_screen.dart';
import '../rent/rent_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "/homescreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.real_estate_agent,
          color: Colors.white,
        ),
        centerTitle: false,
        title: Text(
          "Properties",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: Row(
              children: [
                SizedBox(
                  width: getProportionateScreenWidth(20),
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 45),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: homeTabButton(
                      text: "Buy",
                    ),
                    onTap: (){Navigator.pushNamed(context, BuyScreen.routeName);},
                  ),
                  GestureDetector(
                    child: homeTabButton(
                      text: "Rent",
                    ),
                    onTap: (){Navigator.pushNamed(context, RentScreen.routeName);},
                  ),
                  GestureDetector(
                    child: homeTabButton(
                      text: "Mortgage",
                    ),
                    onTap: (){Navigator.pushNamed(context, MortgageScreen.routeName);},
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            SuggestionList("Recommendition for you",Item.recommendition),
            SizedBox(height: getProportionateScreenHeight(20),),
            SuggestionList("Nearby you",Item.nearby),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF00838F),
        unselectedItemColor: Colors.black,
        onTap: (index) {

    switch(index) {
      // case 2:
      //   Navigator.pushNamed(context, routeName);
      case 3:
        Navigator.pushNamed(context, SettingScreen.routeName);
    }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.message_outlined),label: "Chats"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person),label: "Proflie",),
        ],
      ),
    );
  }
}

class homeTabButton extends StatelessWidget {
  const homeTabButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(40),
      width: getProportionateScreenWidth(110),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF006064)),
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFF00838F)),
      child: Padding(
        padding: EdgeInsets.only(top: 6.0),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(18)),
        ),
      ),
    );
  }
}
