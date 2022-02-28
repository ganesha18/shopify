import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home.dart';
import 'loginPage/ChangePassword.dart';

class AddSocialAccount extends StatefulWidget {
  const AddSocialAccount({Key? key}) : super(key: key);

  @override
  _AddSocialAccountState createState() => _AddSocialAccountState();
}

class _AddSocialAccountState extends State<AddSocialAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromRGBO(253, 107, 34, 0.8),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            //begin: Alignment.topCenter,
            colors: [
              //     Colors.black,
            ]),
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
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Add Social Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
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
                    padding: EdgeInsets.only(left: 25),
                    child: Center(
                      child: Container(
                        alignment: Alignment.topCenter,
                        child: Image.asset(
                          "images/account.JPG",
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
                    "Add Social Accounts.",
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
                      "Connecting with your friends and family has ",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'DM_Sans',
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Text(
                      "never been easier.Simply add your social",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'DM_Sans',
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Center(
                    child: Text(
                      "account to stay connected",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'DM_Sans',
                        fontSize: 14,
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
                              "             Connect with Google",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          icon: Container(
                            height: 30,
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //border: Border.all(color: Colors.grey),
                              // color: Colors.redAccent[250],
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              size: 35,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
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
                              "            Connect with Facebook",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          icon: Container(
                            height: 30,
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //border: Border.all(color: Colors.grey),
                              // color: Colors.redAccent[250],
                            ),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: FaIcon(
                                FontAwesomeIcons.facebook,
                                size: 35,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                              "            Connect with Twitter",
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          icon: Container(
                            height: 30,
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              //border: Border.all(color: Colors.grey),
                              // color: Colors.redAccent[250],
                            ),
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              size: 35,
                              color: Colors.blueAccent[100],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Container(
                  height: 60,
                  width: 325,
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
                          "       Go to Homepage ",
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
          )),
        ],
      ),
    ));
  }
}
