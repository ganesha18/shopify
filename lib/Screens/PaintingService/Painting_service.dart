import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Faq.dart';
import '../contact.dart';
import '../home.dart';
import '../login.dart';
import '../loginPage/registeration.dart';

class Painting_service extends StatefulWidget {
  const Painting_service({Key? key}) : super(key: key);

  @override
  _Painting_serviceState createState() => _Painting_serviceState();
}

class _Painting_serviceState extends State<Painting_service> {
  @override
  Widget build(BuildContext context) {
    var Count = 0;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(253, 107, 34, 0.8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 10, top: 10),
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
                          MaterialPageRoute(builder: (context) => FAQPage()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Painitng Service",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 30,
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
                              builder: (context) => Home()),
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/painting.JPG",
                                width: 160,
                                height: 70,
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              FlatButton.icon(
                                color: Colors.grey[200],
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add_outlined,
                                ),
                                label: Text(
                                  "Custome",
                                  style: TextStyle(color: Colors.yellowAccent),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 10),
                          child: Text(
                            "Select your rooms and place correctly in order to measure estimated cost",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontFamily: 'DM_Sans',
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: SizedBox(
                            height: 150,
                            width: 600,
                            child: ListView.builder(
                              physics: ClampingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (BuildContext context, int index) =>
                                  Card(
                                child: Column(children: [
                                  Image.asset(
                                    "images/painting2.JPG",
                                    height: 180,
                                    width: 280,
                                  ),
                                ]),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 30,
                              ),
                              TextButton(
                                  child: Image.asset(
                                    "images/home1.JPG",
                                    height: 130,
                                    width: 100,
                                  ),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(0)),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              side: BorderSide(
                                                  color: Colors.white)))),
                                  onPressed: () => null),
                              TextButton(
                                  child: Image.asset(
                                    "images/home2.JPG",
                                    height: 130,
                                    width: 100,
                                  ),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(0)),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              side: BorderSide(
                                                  color: Colors.white)))),
                                  onPressed: () => null),
                              TextButton(
                                  child: Image.asset(
                                    "images/home3.JPG",
                                    height: 130,
                                    width: 100,
                                  ),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(0)),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18.0),
                                              side: BorderSide(
                                                  color: Colors.white)))),
                                  onPressed: () => null),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                              child: Icon(
                                Icons.account_circle_sharp,
                                color: Colors.yellow[300],
                              ),),
                              SizedBox(
                                width: 5,
                              ),
                              Column(
                                children:[
                              Text(
                                "Required Person       ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),  ),
                                SizedBox(width: 5,),
                                Text("Regular Cost is \$5/hr total", style: TextStyle(
                                  color: Colors.grey[200],
                                  fontSize: 14
                                ),),
                                Text("cost will be caculated later", style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 14
                                ),),
                              ]),
                              SizedBox(
                                width: 5,
                              ),
                              FlatButton(
                                height: 10,
                                minWidth: 10,
                                color: Colors.grey[90],
                                onPressed: () {},
                                child: FaIcon(
                                  FontAwesomeIcons.minus,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                              Text("$Count", style: TextStyle(fontSize: 18)),
                              FlatButton(
                                height: 10,
                                minWidth: 10,
                                color: Colors.grey[90],
                                onPressed: () {},
                                child: FaIcon(
                                  FontAwesomeIcons.plus,
                                  size: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 20),
                          child: Container(
                            height: 60,
                            width: 325,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.deepOrange),
                              color: Color.fromRGBO(253, 107, 34, 0.8),

                            ),
                            child: FlatButton.icon(
                              onPressed: () {},
                              label: Center(
                                child: Text(
                                  "Proceed",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              icon: Container(
                                height: 30,
                                width: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  //border: Border.all(color: Colors.grey),
                                  // color: Colors.redAccent[250],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
