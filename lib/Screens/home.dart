import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/account.dart';
import 'package:flutter_project/Screens/notification.dart';
import 'package:flutter_project/Screens/offer.dart';
import 'package:flutter_project/models/offer.dart';
import 'contact.dart';
import 'login.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                          MaterialPageRoute(builder: (context) => Contact()),
                        );
                      },
                      icon: Icon(
                        Icons.border_all_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
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
                              builder: (context) => LoginScreen()),
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
                                  "    Bienvenue",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'DM_Sans',
                                    fontSize: 34,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: Container(
                                height: 70,
                                width: 60,
                                child: Image.asset("images/img.jpg"),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "     Besoin d'un coup de main?",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'DM_Sans',
                            fontSize: 20,
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
                              height: 100,
                              minWidth: 30,
                              onPressed: () {},
                              child: Image.asset(
                                "images/menage1.jpg",
                                height: 100,
                                width: 80,
                              ),
                            ),
                            FlatButton(
                              height: 100,
                              minWidth: 30,
                              onPressed: () {},
                              child: Image.asset(
                                "images/rep1.jpg",
                                height: 100,
                                width: 80,
                              ),
                            ),
                            FlatButton(
                              height: 100,
                              minWidth: 30,
                              onPressed: () {},
                              child: Image.asset(
                                "images/revotion1.jpg",
                                height: 100,
                                width: 80,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              "offres et Noureautes",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'DM_Sans',
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            FlatButton(
                              height: 30,
                              minWidth: 40,
                              onPressed: () {},
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                  color: Colors.deepOrange,
                                ),
                                child: Center(
                                  child: Text(
                                    "Trendences",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            FlatButton(
                              height: 30,
                              minWidth: 40,
                              onPressed: () {},
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Center(
                                  child: Text("Promotions"),
                                ),
                              ),
                            ),
                            FlatButton(
                              height: 30,
                              minWidth: 40,
                              onPressed: () {},
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Center(
                                  child: Text("Products"),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
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
                                  "images/limitedOffer1.jpg",
                                  height: 150,
                                  width: 250,
                                ),
                              ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text(
                              "Nos Services",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
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
                                Column(
                              children: [
                                FlatButton(
                                  height: 100,
                                  minWidth: 100,
                                  onPressed: () {},
                                  child: Container(
                                    height: 150,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      //    border: Border.all(color: Colors.grey),
                                      // color: Colors.deepOrange,
                                    ),
                                    child: Image.asset(
                                      "images/rep1.jpg",
                                      height: 220,
                                      width: 190,
                                    ),
                                  ),
                                ),
                              ],
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
