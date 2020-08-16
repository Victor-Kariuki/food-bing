import 'package:flutter/material.dart';
import 'package:food_bing/screens/home/components/item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            title: "Beef & Burgers",
            shopName: "K.F.C.",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {},
          ),
          ItemCard(
            title: "Chinese & Noodles",
            shopName: "Wendy's",
            svgSrc: "assets/icons/chinese_noodles.svg",
            press: () {},
          ),
          ItemCard(
            title: "Beef & Burgers",
            shopName: "K.F.C.",
            svgSrc: "assets/icons/burger_beer.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
