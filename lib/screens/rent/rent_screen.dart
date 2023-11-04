import 'package:flutter/material.dart';

import '../../utilities/size_config.dart';

class RentScreen extends StatelessWidget {
  const RentScreen({Key? key}) : super(key: key);
  static String routeName = "/rentscreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("The Best Houses for Rent"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ...List.generate(10, (index) => Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: getProportionateScreenHeight(200),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/home1.jpg"),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                    ),
                    SizedBox(height: getProportionateScreenHeight(8),),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "4 Floor",
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Price = 100000\$",
                              style: TextStyle(fontSize: 18,color: Colors.grey),
                              textAlign: TextAlign.start,
                            ),
                            Text(
                              "Location = Afghanistan,Herat,Qul Ordo",
                              style: TextStyle(fontSize: 18,color: Colors.grey),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                ),
              ],

            ),
          ),
        ),
      ),
    );
  }
}

