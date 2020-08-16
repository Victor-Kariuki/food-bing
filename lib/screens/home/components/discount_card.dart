import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_bing/constants.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Offers & Discounts",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          Container(
            height: size.height * 0.20,
            margin: EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/beyond-meat-mcdonalds.png"),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: LinearGradient(
                  colors: [
                    kPrimaryColor.withOpacity(0.7),
                    Colors.redAccent.withOpacity(0.7),
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: SvgPicture.asset("assets/icons/macdonalds.svg"),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: "Get a discount of \n",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: "Proxima Nova",
                              ),
                            ),
                            TextSpan(
                              text: "30% \n",
                              style: TextStyle(
                                fontSize: 48.0,
                                fontFamily: "Proxima Nova",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "at Mc Donald's on your first & instant cashback",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontFamily: "Proxima Nova",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
