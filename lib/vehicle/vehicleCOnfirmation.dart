import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../vehicle/confirmLocation.dart';
import '../Screens/home.dart';
import '../Screens/login.dart';

class VehicleConfirmtion extends StatefulWidget {
  const VehicleConfirmtion({Key? key}) : super(key: key);

  @override
  _VehicleConfirmtionState createState() => _VehicleConfirmtionState();
}

class _VehicleConfirmtionState extends State<VehicleConfirmtion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              //begin: Alignment.topCenter,
              colors: [
                Colors.deepOrange,
              ]),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: <Widget>[
                Container(
                  height: 90,
                  width: 90,
                  child: IconButton(
                    // color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmationLocation()),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Confirmation",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 70,
                  width: 70,
                  child: IconButton(
                    // color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    icon: Icon(
                      Icons.doorbell_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
              child: Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(children: [
                    Image.asset(
                      "images/kon1.JPG",
                      height: 150,
                      width: 150,
                    ),
                    Text(
                      "Order Placed",
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        " Your order has been Successfully placed",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        children: [
                          Text(
                            "       For any info call ",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "(+1) 999 999 999",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "YOUR DRIVER",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        "Working Hour: 7PM-9PM",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 50, right: 50, top: 10, bottom: 30),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white54),
                          child: Column(
                            children: [
                              Image.asset(
                                "images/Gabriel.JPG",
                                height: 170,
                                width: 300,
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 60),
                                    child: Image.asset(
                                      "images/call.JPG",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Image.asset(
                                      "images/message.JPG",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Image.asset(
                                      "images/calender.JPG",
                                      height: 50,
                                      width: 50,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                    Container(
                      height: 60,
                      margin: EdgeInsets.only(left: 40, right: 40, top: 10),
                      width: double.infinity,
                      child: FlatButton(
                        child: Text(
                          "Go To HomePage",
                          style: TextStyle(
                            fontFamily: 'DM_Sans',
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (C) => Home()));
                        },
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ])),
            ),
          ),
        ]),
      ),
    );
  }
}
