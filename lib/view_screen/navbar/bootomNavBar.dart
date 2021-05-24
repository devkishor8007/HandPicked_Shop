import 'package:flutter/material.dart';
import 'package:handpicked_shop/helper/colors.dart';
import 'package:handpicked_shop/view_screen/screens/decks_hottestDeal.dart';
import 'package:handpicked_shop/view_screen/screens/homescreen.dart';
import 'package:handpicked_shop/widget/text.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _value = 0;
  List<Widget> _chil = [
    HomeScreen(),
    DecksHottestScreen(),
    Center(
      child: text('Loading Favs...'),
    ),
    Center(
      child: text('Loading Profile...'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          _value = val;
          setState(() {});
        },
        selectedItemColor: Vx.black,
        unselectedItemColor: greyColor,
        selectedIconTheme: IconThemeData(color: blueColor),
        unselectedLabelStyle: TextStyle(color: greyColor),
        type: BottomNavigationBarType.shifting,
        currentIndex: _value,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "decks",
            icon: Icon(Icons.local_offer_rounded),
          ),
          BottomNavigationBarItem(
            label: "Favs",
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: "Prof",
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: _chil[_value],
    );
  }
}
