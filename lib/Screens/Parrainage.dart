import 'package:flutter/material.dart';

import 'home.dart';
import 'loginPage/ChangePassword.dart';

class Paraghranage extends StatefulWidget {
  const Paraghranage({Key? key}) : super(key: key);

  @override
  _ParaghranageState createState() => _ParaghranageState();
}

class _ParaghranageState extends State<Paraghranage> {
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
                width: 65,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Parrainge",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Container(
                height: 70,
                width: 70,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ChangePassword()),
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
                  height: 30,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Center(
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "images/g1.JPG",
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    "Parrainge d'amis.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'DM_Sans',
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Text(
                      "Obtenez un code de coupon de 30DH",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'DM_Sans',
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Text(
                      "lorsque quelquin inscrit en utilisant votre",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'DM_Sans',
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Text(
                      "lien de reference ",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'DM_Sans',
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                          // color: Colors.redAccent[250],
                        ),
                        child: FlatButton.icon(
                          onPressed: () {},
                          label: Center(
                            child: Text(
                              "https://ui8.net/76738b",
                              style: TextStyle(color: Colors.blue),
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
                      SizedBox(
                        height: 120,
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
                                "Page d'accueil ",
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
                                  borderRadius: BorderRadius.circular(10),
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
            ),
          )),
        ],
      ),
    ));
  }
}
