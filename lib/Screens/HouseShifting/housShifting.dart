import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/cleaningPage/CleaningService.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../cleaningPage/Cleaning_service.dart';
import 'cleaningCalenderPage.dart';
import '../contact.dart';
import '../login.dart';

class HouseShifiting extends StatefulWidget {
  const HouseShifiting({Key? key}) : super(key: key);

  @override
  _HouseShifitingState createState() => _HouseShifitingState();
}

class _HouseShifitingState extends State<HouseShifiting> {
  @override
  Widget build(BuildContext context) {
    var Count = 0;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              //begin: Alignment.topCenter,
              colors: [
                Colors.black,
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                          MaterialPageRoute(builder: (context) => Contact()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Office Shifiting Service",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
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
                              builder: (context) =>
                                  ServiceCleaning_de_menage()),
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
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Row(
                            children: [
                              Text(
                                "Office Size",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FlatButton.icon(
                                color: Colors.grey[200],
                                onPressed: () {},
                                icon: Icon(
                                  Icons.add_outlined,
                                ),
                                label: Text(
                                  "Personnalise",
                                  style: TextStyle(color: Colors.deepOrange),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Text(
                            "Select your Office rooms and boxes in order to measure the total cost.",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontFamily: 'DM_Sans',
                                fontSize: 18,
                                color: Colors.grey),
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
                                    "images/smalloffice.JPG",
                                    height: 130,
                                    width: 90,
                                  ),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(5)),
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
                                    "images/largeoffice.JPG",
                                    height: 130,
                                    width: 90,
                                  ),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(5)),
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
                                    "images/multipleoffice.JPG",
                                    height: 130,
                                    width: 90,
                                  ),
                                  style: ButtonStyle(
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.all(5)),
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
                          height: 15,
                        ),
                        Divider(
                          color: Colors.grey[200],
                          thickness: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(children: [
                          Column(children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  "Office items",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'DM_Sans',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "Approximate furnitures ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'DM_Sans',
                                      fontSize: 15,
                                      color: Colors.grey),
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            width: 60,
                          ),
                          FlatButton(
                            color: Colors.grey[200],
                            onPressed: () {},
                            child: Text(
                              "O select",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Column(children: [
                          Row(
                            children: [
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  "images/bed.JPG",
                                  height: 50,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  "images/sofa.JPG",
                                  height: 50,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  "images/chair.JPG",
                                  height: 50,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  "images/add.JPG",
                                  height: 50,
                                ),
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Image.asset(
                                  "images/ac.JPG",
                                  height: 50,
                                ),
                              ),
                            ],
                          ),
                        ]),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          color: Colors.grey[100],
                          thickness: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 20, bottom: 5),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/inbox.JPG",
                                height: 50,
                                width: 50,
                              ),
                              Text(
                                "Femme de menege",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 10,
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
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 20),
                          child: Row(
                            children: [
                              Icon(
                                Icons.account_circle_sharp,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Work",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 130,
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
                          padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                          child: Row(
                            children: [
                              Icon(
                                Icons.timeline,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Electricien",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 85,
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
                          padding: EdgeInsets.only(left: 20, right: 20, top: 5),
                          child: Container(
                            height: 60,
                            width: 325,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              color: Colors.deepOrange,
                            ),
                            child: FlatButton.icon(
                              onPressed: () {},
                              label: Center(
                                child: Text(
                                  "Continuer",
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
