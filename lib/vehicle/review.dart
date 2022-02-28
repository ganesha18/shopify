import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_project/vehicle/vehicleCOnfirmation.dart';

import '../Screens/LocationMap.dart';
import '../Screens/cleaningPage/calender1.dart';
import '../Screens/home.dart';

class reviewPage extends StatefulWidget {
  @override
  _reviewPageState createState() => _reviewPageState();
}

class _reviewPageState extends State<reviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 107, 34, 0.8),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                _top(),
                _bodyChat(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _top() {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Container(
                height: 80,
                width: 90,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Cleaning_service_Calender2()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Review",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 70,
              ),
              Container(
                height: 70,
                width: 70,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LocationMapView()),
                    );
                  },
                  icon: Icon(
                    Icons.doorbell,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bodyChat() {
    return Expanded(
      child: Container(
          padding: EdgeInsets.only(left: 25, right: 25, top: 25),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45), topRight: Radius.circular(45)),
            color: Colors.white,
          ),
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Text("How are your Experience?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text("your order is successfully Done Do you mind ",
                style: TextStyle(fontSize: 15, color: Colors.grey)),
            SizedBox(
              height: 10,
            ),
            Text("giving a small feedback about your experience?",
                style: TextStyle(fontSize: 15, color: Colors.grey)),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Image.asset(
                  "images/Amoje.JPG",
                  height: 70,
                  width: 330,
                )),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("WRITE A REVIEW                                   ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Container(
                height: 290,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //    color: Colors.grey[200],
                ),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type here',
                    //labelText: "Type here",
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //     color: Colors.grey[200]
                      ),
                    ),
                    filled: true,
                    // fillColor: Colors.blueGrey[50],
                    labelStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 20,
                      bottom: 10,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 10, top: 50, bottom: 50),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[100]),
                      child: TextButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepOrange[400]),
                      child: TextButton(
                        onPressed: () {},
                        child: Center(
                            child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                      )),
                ],
              ),
            )
          ])),
    );
  }
}
