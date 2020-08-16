import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_bing/constants.dart';

class ItemCard extends StatelessWidget {
  final String title, svgSrc, shopName;
  final Function press;
  const ItemCard({
    Key key,
    this.title,
    this.svgSrc,
    this.shopName,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.20,
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 10.0,
            offset: Offset(0.0, 5.0),
            color: Color(0xFFB0CCE1).withOpacity(0.5),
          ),
        ],
      ),
      child: Material(
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15.0),
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.15),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      svgSrc,
                      width: size.width * 0.20,
                    ),
                  ),
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  shopName,
                  style: TextStyle(
                    fontSize: 16.0,
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
