import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../vehicle/VichleHomeScreen.dart';
import '../HouseShifting/cleaningCalenderPage.dart';
import 'calender1.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ServiceCleaning_de_menage extends StatefulWidget {
  const ServiceCleaning_de_menage({Key? key}) : super(key: key);

  @override
  _ServiceCleaning_de_menageState createState() =>
      _ServiceCleaning_de_menageState();
}

class _ServiceCleaning_de_menageState extends State<ServiceCleaning_de_menage> {
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
                Color.fromRGBO(253, 107, 34, 0.8),
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
                          MaterialPageRoute(
                              builder: (context) => VehichleHomeScreen()),
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
                    "Cleaning Service",
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
                              builder: (context) =>
                                  Cleaning_service_Calender()),
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
                          padding: EdgeInsets.only(left: 36),
                          child: Row(
                            children: [
                              Image.asset(
                                "images/menage2.JPG",
                                width: 190,
                                height: 80,
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
                            "Selectionnez les pieces de votre maison et la cuisine afin de mesurer les couts estimes du nottoyage.",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                fontFamily: 'DM_Sans',
                                fontSize: 18,
                                color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                    "images/package.JPG",
                                    height: 180,
                                    width: 280,
                                  ),
                                ]),
                              ),
                            ),
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
                              width: 20,
                            ),
                            TextButton(
                              onPressed: () async {
                                String message;
                                try {
                                  final collection = FirebaseFirestore.instance
                                      .collection("users-form-data")
                                      .doc(FirebaseAuth
                                          .instance.currentUser!.email)
                                      .collection("items");
                                  // Get a reference to the `feedback` collection
                                  //final collection = FirebaseFirestore.instance.collection('Cleaning_Service');

                                  // Write the server's timestamp and the user's feedback
                                  await collection.doc().set({
                                    'timestamp': FieldValue.serverTimestamp(),
                                    'studio': 'Studio',
                                    'appartement': '',
                                    'villa': ''
                                  });

                                  message = '';
                                } catch (e) {
                                  message = 'Error when sending feedback';
                                }

                                // Show a snackbar with the result
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(message)));
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Cleaning_service_Calender2()),
                                );
                              },
                              child: Image.asset(
                                "images/studio.JPG",
                                height: 120,
                                width: 90,
                              ),
                            ),
                            TextButton(
                              //minWidth: double.infinity,
                              onPressed: () async {
                                String message;

                                try {
                                  // Get a reference to the `feedback` collection
                                  final collection = FirebaseFirestore.instance
                                      .collection("users-form-data")
                                      .doc(FirebaseAuth
                                          .instance.currentUser!.email)
                                      .collection("items");

                                  // Write the server's timestamp and the user's feedback
                                  await collection.doc().set({
                                    'timestamp': FieldValue.serverTimestamp(),
                                    'studio': '',
                                    'appartement': 'appartement',
                                    'villa': ''
                                  });

                                  message = '';
                                } catch (e) {
                                  message = 'Error when sending feedback';
                                }

                                // Show a snackbar with the result
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(message)));
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Cleaning_service_Calender2()),
                                );
                              },
                              child: Image.asset(
                                "images/appartement.JPG",
                                height: 120,
                                width: 90,
                              ),
                            ),
                            TextButton(
                              //minWidth: double.infinity,
                              onPressed: () async {
                                String message;

                                try {
                                  // Get a reference to the `feedback` collection
                                  final collection = FirebaseFirestore.instance
                                      .collection("users-form-data")
                                      .doc(FirebaseAuth
                                          .instance.currentUser!.email)
                                      .collection("items");

                                  // Write the server's timestamp and the user's feedback
                                  await collection.doc().set({
                                    'timestamp': FieldValue.serverTimestamp(),
                                    'studio': '',
                                    'appartement': '',
                                    'villa': 'villa'
                                  });

                                  message = '';
                                } catch (e) {
                                  message = 'Error when sending feedback';
                                }

                                // Show a snackbar with the result
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(message)));
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Cleaning_service_Calender2()),
                                );
                              },

                              child: Image.asset(
                                "images/villa.JPG",
                                height: 120,
                                width: 90,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.user,
                                size: 20,
                                color: Color.fromRGBO(253, 107, 34, 0.8),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Femme de menege",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              FlatButton(
                                height: 10,
                                minWidth: 10,
                                color: Colors.grey[90],
                                onPressed: () {
                                  Count--;
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
                                  Count++;
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
                              border: Border.all(color: Colors.grey),
                              color: Color.fromRGBO(253, 107, 34, 0.8),
                            ),
                            child: FlatButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          Cleaning_service_Calender2()),
                                );
                              },
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
