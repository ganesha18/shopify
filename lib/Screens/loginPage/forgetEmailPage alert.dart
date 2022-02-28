import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/loginPage/setNewPassword.dart';
import 'package:flutter_project/common/theme_Helper.dart';

import '../home.dart';
import '../login.dart';
import 'LoginSetNewPassword.dart';
import 'emaillogin.dart';
import 'loginForgetPassword.dart';

class LoginForgetPasswordResetEmail extends StatefulWidget {
  const LoginForgetPasswordResetEmail({Key? key}) : super(key: key);

  @override
  _LoginForgetPasswordResetEmailState createState() =>
      _LoginForgetPasswordResetEmailState();
}

class _LoginForgetPasswordResetEmailState
    extends State<LoginForgetPasswordResetEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 290, top: 10),
            child: Container(
              height: 70,
              width: 70,
              child: IconButton(
                // color: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EmailLogin()),
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
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                Text(
                  "Envoi de l'email de réintialisation",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Nous avons envoye tous les details de instructions requises à votre courrier.",
                  style: TextStyle(fontSize: 24, color: Colors.grey),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                SizedBox(
                  height: 360,
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
                        width: 10,
                      ),
                      Center(
                        child: Text(
                          "  Aller a la page de connexio",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
