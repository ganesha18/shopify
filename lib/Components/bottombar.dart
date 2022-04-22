import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/account.dart';
import 'package:flutter_project/Screens/home.dart';
import 'package:flutter_project/Screens/notification.dart';
import 'package:flutter_project/Screens/offer.dart';

import '../Screens/history/MapHistory1.dart';

class bottomBar extends StatefulWidget {
  const bottomBar({Key? key}) : super(key: key);

  @override
  _bottomBarState createState() => _bottomBarState();
}

class _bottomBarState extends State<bottomBar> {
  int selectedpage = 0;
  final _pageOption = [Home(), Map_history1(), offerpage(), AccountPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOption[selectedpage],
      bottomNavigationBar: ConvexAppBar(
        color: Colors.white,
        backgroundColor: Colors.black,
        style: TabStyle.textIn,
        activeColor: Colors.white,
        height: 60,
        items: [
          TabItem(
            icon: Icon(
              Icons.home,
              color: Colors.deepOrange,
            ),
            title: "Accusil",
          ),
          TabItem(
              icon: Icon(
                Icons.assignment_outlined,
                color: Colors.white,
              ),
              title: "notification"),
          TabItem(
              icon: Icon(
                Icons.local_pharmacy_sharp,
                color: Colors.white,
              ),
              title: "Offer"),
          TabItem(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: "Profile"),
        ],
        initialActiveIndex: selectedpage,
        onTap: (int index) {
          setState(() {
            selectedpage = index;
          });
        },
      ),
    );
  }
}
