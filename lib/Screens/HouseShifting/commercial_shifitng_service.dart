import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../common/theme_Helper.dart';
import '../PaintingService/Painting_service.dart';
import '../cleaningPage/Cleaning_service.dart';

import '../contact.dart';
import '../home.dart';
import '../login.dart';
import '../loginPage/registeration.dart';

class CommercialShifitingService extends StatefulWidget {
  const CommercialShifitingService({Key? key}) : super(key: key);

  @override
  _CommercialShifitingServiceState createState() =>
      _CommercialShifitingServiceState();
}

class _CommercialShifitingServiceState
    extends State<CommercialShifitingService> {
  @override
  Widget build(BuildContext context) {
    var Count = 1;
    var Count1 = 3;
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
                          MaterialPageRoute(
                              builder: (context) => Painting_service()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    "Commercial Shifting Service",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 3,
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
                                "Industry Size",
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
                                  "ADD",
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
                            "Select your business type and instruments in order to measure the approximate cost.",
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            "floor Size",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            child: TextFormField(
                              decoration:
                                  ThemeHelper().textInputDecoration('', ''),
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            "Industry Type",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            child: TextFormField(
                              decoration:
                                  ThemeHelper().textInputDecoration('', ''),
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Text(
                            "Industry Type",
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          child: Container(
                            child: TextFormField(
                              decoration:
                                  ThemeHelper().textInputDecoration('', ''),
                            ),
                            decoration:
                                ThemeHelper().inputBoxDecorationShaddow(),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          color: Colors.grey[100],
                          thickness: 10,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 20, top: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.luggage,
                                size: 20,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Heavy Item ",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 90,
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
                              Text("$Count1", style: TextStyle(fontSize: 18)),
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
                                width: 5,
                              ),
                              Text(
                                "Workers",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 115,
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
                                width: 95,
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
