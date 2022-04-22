import 'package:flutter/material.dart';
import 'package:flutter_project/common/theme_Helper.dart';

import '../account.dart';
import '../home.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool hidepassword = true;
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
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Container(
                height: 90,
                width: 90,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountPage()),
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
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  "Change Password",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
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
                    Icons.doorbell_sharp,
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
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0, right: 30),
                    child: Text(
                      "Change Password",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'DM_Sans',
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25, right: 30),
                    child: Text(
                      "Please note changing passwords will required again login to the app.",
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontFamily: 'DM_Sans',
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: TextFormField(
                            obscureText: hidepassword,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Current Password",
                              hintText: "",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              suffixIcon: InkWell(
                                onTap: TogglePasswordView,
                                child: Icon(
                                  Icons.visibility,
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 25, 10),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 2.0)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Colors.red, width: 2.0)),
                            ),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Current Pasword";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: TextFormField(
                            obscureText: hidepassword,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "New Password",
                              hintText: "",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              suffixIcon: InkWell(
                                onTap: TogglePasswordView,
                                child: Icon(
                                  Icons.visibility,
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 25, 10),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 2.0)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Colors.red, width: 2.0)),
                            ),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your New Password";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: TextFormField(
                            obscureText: hidepassword,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Confirm New Password",
                              hintText: "",
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.always,
                              suffixIcon: InkWell(
                                onTap: TogglePasswordView,
                                child: Icon(
                                  Icons.visibility,
                                ),
                              ),
                              contentPadding:
                                  EdgeInsets.fromLTRB(20, 10, 25, 10),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400)),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 2.0)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: Colors.red, width: 2.0)),
                            ),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Confirm New Password";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 60,
                    width: 270,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(color: Colors.deepOrange),
                      color: Color.fromRGBO(253, 107, 34, 0.8),
                    ),
                    child: FlatButton.icon(
                      onPressed: () {},
                      label: Center(
                        child: Text(
                          "Save Password",
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
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }

  void TogglePasswordView() {
    // if (hidepassword == true) {
    //   hidepassword = false;
    // } else {
    //   hidepassword = true;
    // }
    setState(() {
      hidepassword = !hidepassword;
    });
  }
}
