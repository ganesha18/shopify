import 'package:flutter/material.dart';
import 'package:flutter_project/common/theme_Helper.dart';

import '../home.dart';
import '../login.dart';
import 'forgetEmailPage alert.dart';

class SetNew_Password extends StatefulWidget {
  const SetNew_Password({Key? key}) : super(key: key);

  @override
  _SetNew_PasswordState createState() => _SetNew_PasswordState();
}

class _SetNew_PasswordState extends State<SetNew_Password> {
  bool hidepassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(right: 260),
            child: Container(
              alignment: Alignment.topLeft,
              height: 70,
              width: 70,
              child: IconButton(
                // color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginForgetPasswordResetEmail()),
                  );
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Text(
              "Set new Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 38,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Create Strong and secured ",
            style: TextStyle(fontSize: 26, color: Colors.grey),
          ),
          Text(
            "new password.                     ",
            style: TextStyle(fontSize: 26, color: Colors.grey),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: TextFormField(
              obscureText: hidepassword,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: "Password",
                hintText: "",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: InkWell(
                  onTap: TogglePasswordView,
                  child: Icon(
                    Icons.visibility,
                  ),
                ),
                contentPadding: EdgeInsets.fromLTRB(20, 10, 25, 10),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey.shade400)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey, width: 2.0)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.red, width: 2.0)),
              ),
              validator: (val) {
                if (val!.isEmpty) {
                  return "Enter your Mot de passe";
                }
                return null;
              },
            ),
            decoration: ThemeHelper().inputBoxDecorationShaddow(),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: TextFormField(
              obscureText: hidepassword,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                labelText: "Confirm Password",
                hintText: "",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: InkWell(
                  onTap: TogglePasswordView,
                  child: Icon(
                    Icons.visibility,
                  ),
                ),
                contentPadding: EdgeInsets.fromLTRB(20, 10, 25, 10),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey.shade400)),
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey, width: 2.0)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.red, width: 2.0)),
              ),
              validator: (val) {
                if (val!.isEmpty) {
                  return "Enter your Mot de passe";
                }
                return null;
              },
            ),
            decoration: ThemeHelper().inputBoxDecorationShaddow(),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: FlatButton(
              child: Text(
                "Save Password",
                style: TextStyle(fontFamily: 'DM_Sans', color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (C) => Home()));
              },
              color: Colors.grey[200],
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void TogglePasswordView() {
    setState(() {
      hidepassword = !hidepassword;
    });
  }
}
