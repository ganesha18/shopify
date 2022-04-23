import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../cleaningPage/calender.dart';
import '../home.dart';
import '../notification.dart';

class Service_de_menage extends StatefulWidget {
  const Service_de_menage({Key? key}) : super(key: key);

  @override
  _Service_de_menageState createState() => _Service_de_menageState();
}

class _Service_de_menageState extends State<Service_de_menage> {
  @override
  Widget build(BuildContext context) {
    var Count = 0;
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(253, 107, 34, 0.8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              //begin: Alignment.topCenter,
              colors: [
                //Colors.deepOrange,
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 10),
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
                    width: 15,
                  ),
                  Text(
                    "Service de menage",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 22,
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
                              builder: (context) => notification()),
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
                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  " Taille de la maison",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'DM_Sans',
                                    fontSize: 33,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Text(
                            "Selectionnez les pieces de votre maison et la cuisine afin de mesurer le couttotal",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontFamily: 'DM_Sans',
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            FlatButton(
                              height: 110,
                              //minWidth: double.infinity,
                              onPressed: () async {
                                final collection = FirebaseFirestore.instance
                                    .collection("users-form-data")
                                    .doc(FirebaseAuth
                                        .instance.currentUser!.email)
                                    .collection("Service_de_menage");

                                // Write the server's timestamp and the user's feedback
                                await collection.doc().set({
                                  'timestamp': FieldValue.serverTimestamp(),
                                  'studio': 'studio',
                                  'appartement': '',
                                  'villa': ''
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Cleaning_service_Calender1()),
                                );
                              },
                              child: Image.asset(
                                "images/studio.JPG",
                                height: 120,
                                width: 80,
                              ),
                            ),
                            FlatButton(
                              height: 110,
                              //minWidth: double.infinity,
                              onPressed: () async {
                                final collection = FirebaseFirestore.instance
                                    .collection("users-form-data")
                                    .doc(FirebaseAuth
                                        .instance.currentUser!.email)
                                    .collection("Service_de_menage");

                                // Write the server's timestamp and the user's feedback
                                await collection.doc().set({
                                  'timestamp': FieldValue.serverTimestamp(),
                                  'studio': '',
                                  'appartement': 'appartement',
                                  'villa': ''
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Cleaning_service_Calender1()),
                                );
                              },
                              child: Image.asset(
                                "images/appartement.JPG",
                                height: 120,
                                width: 80,
                              ),
                            ),
                            FlatButton(
                              height: 110,
                              //minWidth: double.infinity,
                              onPressed: () async {
                                final collection = FirebaseFirestore.instance
                                    .collection("users-form-data")
                                    .doc(FirebaseAuth
                                        .instance.currentUser!.email)
                                    .collection("Service_de_menage");

                                // Write the server's timestamp and the user's feedback
                                await collection.doc().set({
                                  'timestamp': FieldValue.serverTimestamp(),
                                  'studio': '',
                                  'appartement': '',
                                  'villa': 'villa'
                                });
                              },
                              child: Image.asset(
                                "images/villa.JPG",
                                height: 140,
                                width: 80,
                              ),
                            ),
                          ],
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
                                  "Produits      ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'DM_Sans',
                                    fontSize: 16,
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
                                      //  fontWeight: FontWeight.bold,
                                      fontFamily: 'DM_Sans',
                                      fontSize: 12,
                                      color: Colors.grey),
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(
                            width: 70,
                          ),
                          FlatButton.icon(
                            color: Colors.grey[200],
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_sharp,
                            ),
                            label: Text(
                              " 4 element",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Column(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    "images/bed.JPG",
                                    height: 70,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    "images/sofa.JPG",
                                    height: 70,
                                  ),
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    "images/chair.JPG",
                                    height: 70,
                                  ),
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    "images/almira.JPG",
                                    height: 70,
                                  ),
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    "images/ac.JPG",
                                    height: 70,
                                  ),
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 10),
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    "images/fridge.JPG",
                                    height: 70,
                                  ),
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    "images/oven.JPG",
                                    height: 70,
                                  ),
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    "images/tv.JPG",
                                    height: 70,
                                  ),
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    "images/wardrobe.JPG",
                                    height: 70,
                                  ),
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    "images/add.JPG",
                                    height: 70,
                                  ),
                                  style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Colors.transparent),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(50),
                                            side: BorderSide(
                                                color: Colors.white))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          color: Colors.grey[100],
                          thickness: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
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
                                onPressed: () {
                                  setState(() {
                                    Count++;
                                  });
                                },
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
                                onPressed: () {
                                  setState(() {
                                    Count++;
                                  });
                                },
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
                          padding: EdgeInsets.all(20),
                          child: Container(
                            height: 60,
                            width: 325,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Color.fromRGBO(253, 107, 34, 0.8),
                              ),
                              color: Color.fromRGBO(253, 107, 34, 0.8),
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
