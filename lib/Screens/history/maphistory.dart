import 'package:flutter/material.dart';

import '../Editing_Screen.dart';
import '../addASocialAccount.dart';
import '../home.dart';
import '../onbording.dart';

class Map_history extends StatefulWidget {
  const Map_history({Key? key}) : super(key: key);

  @override
  _Map_historyState createState() => _Map_historyState();
}

class _Map_historyState extends State<Map_history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            //begin: Alignment.topCenter,
            colors: [
              Colors.white,
            ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
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
                      MaterialPageRoute(
                          builder: (context) => EditProfilePage()),
                    );
                  },
                  icon: Icon(
                    Icons.border_all_rounded,
                    color: Colors.deepOrange[300],
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Historique  ",
                    style: TextStyle(
                      color: Colors.deepOrange[500],
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 65,
              ),
              Container(
                height: 70,
                width: 70,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Onbording()),
                    );
                  },
                  icon: Icon(
                    Icons.doorbell_sharp,
                    color: Colors.deepOrange[500],
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
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Co mois-ci ",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.art_track,
                            color: Colors.deepOrange[500],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Icon(
                            Icons.apps,
                            color: Colors.deepOrange[500],
                            //     color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 700,
                    width: 350,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) => Card(
                        child: Column(children: [
                          Image.asset(
                            "images/Google_Map.jpg",
                            height: 300,
                            width: 350,
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
