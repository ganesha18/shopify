import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../vehicle/confirmLocation.dart';
import '../Screens/home.dart';
import '../Screens/login.dart';

class CommandConfirme2 extends StatefulWidget {
  const CommandConfirme2({Key? key}) : super(key: key);

  @override
  _CommandConfirme2State createState() => _CommandConfirme2State();
}

class _CommandConfirme2State extends State<CommandConfirme2> {
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
                              builder: (context) => ConfirmationLocation()),
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
                    "Commande confirme",
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
                  child: Column(children: [
                    Image.asset(
                      "images/kon.JPG",
                      height: 130,
                      width: 130,
                    ),
                    Text(
                      "Commande Confirme",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        "    Votre commande a ete passee avec succes notre equipe logistique vous contactera bientot. Pour toute aide, appelez ",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        children: [
                          Text(
                            "Pour toute aide, appelez ",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "(+212) xxxxxxxxx",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      thickness: 2,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "CALENDRIER",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        "vendred Mai 11, 2021 , 8H",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 60,
                      margin: EdgeInsets.only(left: 40, right: 40, top: 20),
                      width: double.infinity,
                      child: FlatButton(
                        child: Text(
                          "AJOUTER AU CALENDRIER",
                          style: TextStyle(
                            fontFamily: 'DM_Sans',
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (C) => Home()));
                        },
                        color: Theme.of(context).primaryColor,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                        child: Column(children: [
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
                            FlatButton.icon(
                              onPressed: () {},
                              label: Center(
                                child: Text(
                                  "Aller a la page d'accueil ",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                          ],
                        ),
                      ),
                    ])),
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
