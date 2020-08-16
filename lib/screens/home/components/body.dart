import 'package:flutter/material.dart';
import 'package:food_bing/components/search_box.dart';
import 'package:food_bing/screens/home/components/category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
        ],
      ),
    );
  }
}
