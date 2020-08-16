import 'package:flutter/material.dart';
import 'package:food_bing/constants.dart';
import 'package:food_bing/screens/home/home_screen.dart';

void main() => runApp(FoodBing());

class FoodBing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Bing',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        accentColor: Color(0xFFFEF9EB),
        fontFamily: "Proxima Nova",
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headline5: TextStyle(
            fontWeight: FontWeight.w500,
          ),
          headline6: TextStyle(
            fontSize: 18.0,
          ),
          bodyText2: TextStyle(
            color: kSecondaryColor,
            fontSize: 16.0,
          ),
          bodyText1: TextStyle(color: kSecondaryColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
