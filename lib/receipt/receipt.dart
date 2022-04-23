import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Screens/HouseShifting/Service_de_menege.dart';
import '../Screens/HouseShifting/commercial_shifitng_service.dart';

class reciept extends StatefulWidget {
  const reciept({Key? key}) : super(key: key);

  @override
  _recieptState createState() => _recieptState();
}

class _recieptState extends State<reciept> {
  List cost = [];
  var _firestoreInstance = FirebaseFirestore.instance;

  fetchProducts() async {
    QuerySnapshot qn =
        await _firestoreInstance.collection("HOME_PAGE_AID").get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        cost.add({
          "cost": qn.docs[i]["cost"],
        });
      }
    });

    return qn.docs;
  }

  @override
  void initState() {
    //TODO: implement activate
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.deepOrange[400],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
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
                              builder: (context) => Service_de_menage()),
                        );
                      },
                      icon: Icon(
                        Icons.border_all_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Center(
                      child: Text(
                    "Details de la commande",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
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
                          MaterialPageRoute(
                              builder: (context) =>
                                  CommercialShifitingService()),
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
              child: SingleChildScrollView(
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
                          Center(
                            child: Container(
                              //  color: Colors.white,
                              child: RaisedButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Image.asset(
                                  "images/location.JPG",
                                  width: 300,
                                  height: 200,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Center(
                            child: Container(
                                color: Colors.white,
                                height: 500,
                                width: 330,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Details de la commande",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 100,
                                        ),
                                        Icon(
                                          Icons.edit,
                                        ),
                                      ],
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                    Image.asset(
                                      "images/appartement1.JPG",
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Image.asset("images/meubles.JPG"),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Image.asset("images/ouveris.JPG"),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            "VehcUle(Mini Truck)",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            width: 100,
                                          ),
                                          Text(
                                            "",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Frais de service",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            width: 115,
                                          ),
                                          Text(
                                            "",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Code promo",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            width: 135,
                                          ),
                                          Text(
                                            "",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Divider(
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 20),
                                      child: Row(
                                        children: [
                                          Text(
                                            "Total",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            width: 190,
                                          ),
                                          Text(
                                            "${cost[0]["text"]}",
                                            style: TextStyle(
                                                color: Colors.deepOrange[400],
                                                fontSize: 14),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                          SizedBox(
                            height: 90,
                          ),
                          SizedBox(
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
                                    "images/PAIEMENT.JPG",
                                    height: 110,
                                    width: 150,
                                  ),
                                ]),
                              ),
                            ),
                          ),
                          Container(
                            height: 60,
                            margin: EdgeInsets.all(30),
                            width: double.infinity,
                            child: FlatButton(
                              child: Text(
                                "Confirmer(\$56)",
                                style: TextStyle(
                                    fontFamily: 'DM_Sans', color: Colors.white),
                              ),
                              onPressed: () {},
                              color: Colors.deepOrange[400],
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
