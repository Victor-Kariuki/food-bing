import 'package:flutter/material.dart';
import 'package:food_bing/components/search_box.dart';
import 'package:food_bing/screens/home/components/category_list.dart';
import 'package:food_bing/screens/home/components/discount_card.dart';
import 'package:food_bing/screens/home/components/item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemList(),
          DiscountCard()
        ],
      ),
    );
  }
}
