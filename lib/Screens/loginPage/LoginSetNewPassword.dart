import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/loginPage/setNewPassword.dart';
import 'package:flutter_project/common/theme_Helper.dart';

import '../home.dart';
import '../login.dart';
import 'forgetEmailPage alert.dart';
import 'login1.dart';

class LoginSetNew_Password extends StatefulWidget {
  const LoginSetNew_Password({Key? key}) : super(key: key);

  @override
  _LoginSetNew_PasswordState createState() => _LoginSetNew_PasswordState();
}

class _LoginSetNew_PasswordState extends State<LoginSetNew_Password> {
  bool hidepassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
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
                    MaterialPageRoute(builder: (context) => SetNew_Password()),
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
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(children: [
              Center(
                child: Text(
                  "Definir un nouveau mot de passe",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Creez un nouveau mot de passe fort et securise.",
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),
            ]),
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: <Widget>[
                Container(
                  child: TextFormField(
                    obscureText: hidepassword,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Mot de passe",
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.red, width: 2.0)),
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
                      labelText: "Confirm Mot de passe",
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
                          borderSide:
                              BorderSide(color: Colors.grey, width: 2.0)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide:
                              BorderSide(color: Colors.red, width: 2.0)),
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
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: FlatButton(
              child: Text(
                "Enregistrer is not de passe",
                style: TextStyle(
                  fontFamily: 'DM_Sans',
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (C) => LoginForgetPasswordResetEmail()));
              },
              color: Color.fromRGBO(253, 107, 34, 0.8),
              textColor: Colors.black,
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
