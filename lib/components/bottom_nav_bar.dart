import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_bing/constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      height: size.height * 0.075,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFB0CCE1).withOpacity(0.5),
            offset: Offset(0.0, -7.0),
            blurRadius: 33.0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/home.svg",
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Following.svg",
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/Glyph.svg",
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              "assets/icons/person.svg",
              color: kPrimaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
