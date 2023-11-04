import 'package:flutter/material.dart';
import 'package:transaction_guide_app/utilities/size_config.dart';
import 'item_model.dart';

class ItemCard extends StatefulWidget {
  ItemCard(this.item, this.onTap, {Key? key}) : super(key: key);
  Item item;
  Function()? onTap;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(300),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Color(0xfcf9f8),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: getProportionateScreenHeight(150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                      image: AssetImage(widget.item.image),
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
                    fontSize: getProportionateScreenWidth(18),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: getProportionateScreenHeight(8),
              ),
              Text(
                widget.item.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(20),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: getProportionateScreenWidth(8),
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
                height: getProportionateScreenHeight(20),
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
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite_outline)
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
