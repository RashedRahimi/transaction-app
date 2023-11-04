import 'package:flutter/material.dart';
import 'package:transaction_guide_app/constants/house_card.dart';
import 'package:transaction_guide_app/screens/home_page/details_screen.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';
import 'item_model.dart';

class SuggestionList extends StatefulWidget {
  SuggestionList(this.title, this.items, {Key? key}) : super(key: key);
  String title;
  List<Item> items;

  @override
  State<SuggestionList> createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                TextButton(onPressed: () {}, child: Text("See All")
                ),
              ],
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(12),),
          Container(
            height: getProportionateScreenHeight(340),
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal, itemCount: widget.items.length,
              itemBuilder: (context, index) =>
                  ItemCard(widget.items[index], () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(widget.items[index],)));
                  }),

            ),
          ),
        ],
      ),
    );
  }
}
