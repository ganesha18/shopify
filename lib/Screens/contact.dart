import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/home.dart';
import '../Faq.dart';
import 'account.dart';
import 'addASocialAccount.dart';
import 'chatbot.dart';
import 'loginPage/ChangePassword.dart';

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
            color: Color.fromRGBO(253, 107, 34, 0.8),
            gradient: LinearGradient(
                //begin: Alignment.topCenter,
                colors: [
                  //  Colors.deepOrange,
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
                    width: 35,
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
                    width: 38,
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
                              builder: (context) => ChangePassword()),
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
                                //fontWeight: FontWeight.bold,
                                fontFamily: 'DM_Sans',
                                fontSize: 16,
                                color: Colors.grey),
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
                                        child: MaterialButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ChatBot()),
                                              );
                                            },
                                            child: Image.asset(
                                              "images/chat.JPG",
                                              height: 130,
                                              width: 130,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                          height: 160,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border:
                                                Border.all(color: Colors.grey),
                                            //  color: Colors.lightBlueAccent,
                                          ),
                                          child: Image.asset(
                                            "images/t.JPG",
                                            height: 45,
                                            width: 45,
                                          )),
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
                                        child: MaterialButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          AddSocialAccount()));
                                            },
                                            child: Image.asset(
                                              "images/email.JPG",
                                              height: 130,
                                              width: 130,
                                            )),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                          height: 160,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border:
                                                Border.all(color: Colors.grey),
                                            //  color: Colors.lightBlueAccent,
                                          ),
                                          child: MaterialButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        FAQPage()),
                                              );
                                            },
                                            child: Center(
                                              child: Image.asset(
                                                "images/F.JPG",
                                                height: 160,
                                                width: 160,
                                              ),
                                            ),
                                          )),
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
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AccountPage()));
                                          },
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
