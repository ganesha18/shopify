import 'dart:ui';
import 'package:flutter/material.dart';
import 'Screens/cleaningPage/Cleaning_service.dart';
import 'Screens/cleaningPage/calender1.dart';
import 'Screens/home.dart';
import 'Screens/notification.dart';

class FAQPage extends StatefulWidget {
  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  bool isVisible = false;
  bool isVisible1 = false;
  bool isVisibe2 = false;
  bool isVisible3 = false;
  bool isVisible4 = false;
  bool isVisible5 = false;
  bool isVisible6 = false;
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
                          builder: (context) => ServiceCleaning_de_menage()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 80,
              ),
              Container(
                child: Center(
                  child: Text(
                    "FAQ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 85,
              ),
              Container(
                height: 70,
                width: 70,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => notification()),
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
        child: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 10,
          ),
          Text("FAQ                                                  ",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 20,
          ),
          Text(
              "Find important information and updates about any recent changes and fees here.",
              style: TextStyle(fontSize: 15, color: Colors.grey)),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.grey,
          ),
          Text("General                                               ",
              style: TextStyle(
                fontSize: 24,
                color: Color.fromRGBO(253, 107, 34, 0.8),
              )),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "How to contact with riders?",
              ),
              SizedBox(
                width: 98,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          if (isVisible)
            (Text(
              "How to contact with riders?",
            )),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Text(
                "How to change my selected furnitur?",
              ),
              SizedBox(
                width: 40,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isVisible1 = !isVisible1;
                  });
                },
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.black,
                ),
              )
            ],
          ),
          if (isVisible1)
            (Text(
              "How to contact with riders?",
            )),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Text(
                "What is the cost of each item?",
              ),
              SizedBox(
                width: 80,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isVisible3 = !isVisible3;
                  });
                },
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.black,
                ),
              )
            ],
          ),
          if (isVisible3)
            (Text(
              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
            )),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey,
          ),
          Text("Contact                                             ",
              style: TextStyle(
                fontSize: 24,
                color: Color.fromRGBO(253, 107, 34, 0.8),
              )),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "What is the customer care number?",
              ),
              SizedBox(
                width: 48,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isVisible4 = !isVisible4;
                  });
                },
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          if (isVisible4)
            (Text(
              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
            )),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Text(
                "Can I Cancel the Order after one weeek?",
              ),
              SizedBox(
                width: 18,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isVisible5 = !isVisible5;
                  });
                },
                child: Icon(
                  Icons.keyboard_arrow_up_sharp,
                  color: Colors.black,
                ),
              )
            ],
          ),
          if (isVisible5)
            (Text(
              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            )),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.grey,
          ),
          Row(
            children: [
              Text(
                "How to call any service now?",
              ),
              SizedBox(
                width: 87,
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    isVisible6 = !isVisible6;
                  });
                },
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.black,
                ),
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          if (isVisible6)
            (Text(
              "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.",
              style: TextStyle(color: Colors.grey, fontSize: 18),
            )),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: 325,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
              // color: Colors.redAccent[250],
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                ),
                Center(
                  child: Text(
                    "      Go to Homepage ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FlatButton.icon(
                  onPressed: () {},
                  label: Text(""),
                  icon: Container(
                    height: 30,
                    width: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      //border: Border.all(color: Colors.grey),
                      // color: Colors.redAccent[250],
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      //     color: Colors.red,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ])),
      ),
    );
  }
}
