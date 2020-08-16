import 'package:flutter/material.dart';
import 'package:food_bing/components/bottom_nav_bar.dart';
import 'package:food_bing/screens/home/components/app_bar.dart';
import 'package:food_bing/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(size: size),
      body: Body(),
    );
  }
}
