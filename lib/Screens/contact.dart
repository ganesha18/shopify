import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/home.dart';

import 'login.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 7,
              ),
              Row(
                children: <Widget>[
                  Container(
                    height: 90,
                    width: 90,
                    child: IconButton(
                      // color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Contactez-nous",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    child: IconButton(
                      // color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
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
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              "Nous Joindre",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'DM_Sans',
                                fontSize: 34,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30),
                          child: Text(
                            "Veuilez choisir les types de soutien dont vous avez besein et faites-le nous savoir.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'DM_Sans',
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 30,
                                  right: 30,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.grey),
                                          //color: Colors.lightGreenAccent,
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            FlatButton.icon(
                                              onPressed: () {},
                                              icon: Container(
                                                height: 50,
                                                width: 50,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                  color: Colors
                                                      .lightGreenAccent[200],
                                                ),
                                                child: Icon(
                                                  Icons.message,
                                                  color: Colors.green,
                                                ),
                                              ),
                                              label: Text(""),
                                            ),
                                            Column(
                                              children: [
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Center(
                                                    child: Text(
                                                  "Chat",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                )),
                                                Center(
                                                    child: Text(
                                                  " d'assistance",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                  ),
                                                )),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Center(
                                                  child: Text(
                                                    "   Assistande en ligma ",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                                Center(
                                                  child: Text(
                                                    " 24/7",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 160,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.grey),
                                          //  color: Colors.lightBlueAccent,
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            FlatButton.icon(
                                                onPressed: () {},
                                                icon: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    border: Border.all(
                                                        color: Colors.grey),
                                                    color:
                                                        Colors.redAccent[100],
                                                  ),
                                                  child: Icon(
                                                    Icons.add_call,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                label: Text("")),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Telephone",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Services Available 24/7",
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                  left: 30,
                                  right: 30,
                                ),
                                child: Center(
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 160,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.grey),
                                          //color: Colors.lightGreenAccent,
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Center(
                                              child: FlatButton.icon(
                                                onPressed: () {},
                                                icon: Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    border: Border.all(
                                                        color: Colors.grey),
                                                    color: Colors.purpleAccent,
                                                  ),
                                                  child: Icon(
                                                    Icons.email,
                                                    color: Colors.purple,
                                                  ),
                                                ),
                                                label: Text(""),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Column(
                                              children: [
                                                Center(
                                                    child: Text(
                                                  "Email",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                )),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                Text(
                                                  "admin@gmail.com",
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        height: 160,
                                        width: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: Colors.grey),
                                          //  color: Colors.lightBlueAccent,
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Center(
                                              child: FlatButton.icon(
                                                  onPressed: () {},
                                                  icon: Container(
                                                    height: 70,
                                                    width: 70,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      // border: Border.all(color: Colors.grey),
                                                      //  color: Colors.yellowAccent,
                                                    ),
                                                    child: Center(
                                                      child: Image.asset(
                                                        "images/questionmarks1.jpg",
                                                        height: 70,
                                                        width: 70,
                                                      ),
                                                    ),
                                                  ),
                                                  label: Text("")),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Center(
                                              child: Text(
                                                "FAQ",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Center(
                                              child: Text(
                                                "+50 queries",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                            Container(
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 90,
                                  ),
                                  Container(
                                    height: 60,
                                    width: 270,
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
                                            "Page d'accuel ",
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
                                              borderRadius:
                                                  BorderRadius.circular(10),
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
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ],
          )),
    );
  }
}
