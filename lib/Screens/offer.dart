import 'package:flutter/material.dart';

import 'home.dart';

class offerpage extends StatefulWidget {
  const offerpage({Key? key}) : super(key: key);

  @override
  _offerpageState createState() => _offerpageState();
}

class _offerpageState extends State<offerpage> {
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
                        Icons.border_all_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        "Offerr",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 75,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    child: IconButton(
                      // color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
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
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "Latest Offer",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 100.0,
                      width: 600.0,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) => Card(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Image.asset(
                              "images/offer.JPG",
                              height: 100,
                              width: 210,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "Limited Offer",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Image.asset(
                            "images/limitedOffer1.jpg",
                            height: 190,
                            width: 700,
                          )),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "Just For You",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 150.0,
                      width: 600.0,
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                          alignment: Alignment.topLeft,
                          child: Image.asset(
                            "images/save.JPG",
                            height: 170,
                            width: 120,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          )),
    );
  }
}
