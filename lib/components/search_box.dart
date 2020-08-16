import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_bing/constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: kSecondaryColor.withOpacity(0.32),
        ),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset("assets/icons/search.svg"),
          hintText: "Search Here",
          hintStyle: TextStyle(
            color: kSecondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
