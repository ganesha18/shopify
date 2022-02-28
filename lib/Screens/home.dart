import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'HouseShifting/Service_de_menege.dart';
import 'HouseShifting/commercial_shifitng_service.dart';
import 'contact.dart';
import 'login.dart';

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
          color: Color.fromRGBO(253, 107, 34, 0.8),
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
                              builder: (context) => CommercialShifitingService()),
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
                                  "   Bienvenue",
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
                          "       Besoin d'un coup de main?",
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontFamily: 'DM_Sans',
                            color: Colors.grey,
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
                              width: 20,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                "images/menage1.jpg",

                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                "images/rep1.jpg",
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                "images/revotion1.jpg",

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
                        Padding(padding: EdgeInsets.all(10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 10,),
                            TextButton(
                                child: Center(
                                  child: Text(
                                    "trendences",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                style: ButtonStyle(
                                    backgroundColor:  MaterialStateProperty.all<Color>(
                                      Color.fromRGBO(253, 107, 34, 0.8),),
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                          Color.fromRGBO(253, 107, 34, 0.8),),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: BorderSide(
                                              color:  Color.fromRGBO(253, 107, 34, 0.8),)))),
                                onPressed: () => null),

                            SizedBox(width: 5,), TextButton(
                                child: Center(
                                  child: Text(
                                    "Promotions",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                style: ButtonStyle(
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: BorderSide(
                                                color: Colors.grey)))),
                                onPressed: () => null),
                            SizedBox(width: 5,),
                            TextButton(
                                child: Center(
                                  child: Text(
                                    "Products",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                style: ButtonStyle(
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.all(15)),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                            side: BorderSide(
                                                color: Colors.grey)))),
                                onPressed: () => null),
                          ],
                        ),),
                        SizedBox(
                          height: 10,
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
                                TextButton(
                                  onPressed: () {},
                                  child: Container(
                                    height: 100,
                                    width: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      //    border: Border.all(color: Colors.grey),
                                      // color: Colors.deepOrange,
                                    ),
                                    child: Image.asset(
                                      "images/rep1.jpg",
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
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
