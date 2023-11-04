import 'package:flutter/material.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';

import '../../constants/item_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.item, {Key? key}) : super(key: key);
  Item item;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blueAccent),
        title: Text(
          widget.item.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: getProportionateScreenHeight(300),
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(16.0),
                image: DecorationImage(
                    image: AssetImage("assets/images/splash_screen.jpg"),
                    fit: BoxFit.cover),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Text(
              widget.item.category,
              style: TextStyle(
                  color: Colors.blue.shade600,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(16.0)),
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            Text(
              widget.item.title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(18),
                  overflow: TextOverflow.ellipsis),
            ),
            SizedBox(
              height: getProportionateScreenHeight(8),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                Text(
                  widget.item.location,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: getProportionateScreenWidth(16),
                      color: Colors.grey),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${widget.item.price}\$ / month",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(22),
                      fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.favorite_outline)),
              ],
            ),
            Expanded(child: Container(),),
            Container(
              width: double.infinity,
              height: getProportionateScreenHeight(60.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),

              ),
              child: RawMaterialButton(onPressed: (){},
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)
              ),
                fillColor: Color(0xFF00838F),
                child: Text("Rent Now",style: TextStyle(color: Colors.white,fontSize: 18),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
