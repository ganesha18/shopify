import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/common/theme_Helper.dart';
import 'LoginSetNewPassword.dart';
import 'login.dart';

class EmailLogin extends StatefulWidget {
  const EmailLogin({Key? key}) : super(key: key);

  @override
  _EmailLoginState createState() => _EmailLoginState();
}

class _EmailLoginState extends State<EmailLogin> {
  final _auth = FirebaseAuth.instance;
  final email = new TextEditingController();
  final Password = new TextEditingController();
  String? errorMessage;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Container(
          color: Colors.white,
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: 260, top: 20),
              child: Container(
                alignment: Alignment.topLeft,
                height: 70,
                width: 70,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login()),
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
              height: 10,
            ),
            Text(
              "Mot de passe oublie    ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 34,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Entrez votre adresse e-mail pour reintialiser le mot de passe",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                  color: Colors.grey),
            ),
            SizedBox(height: 30.0),
            Container(
              child: TextFormField(
                decoration:
                    ThemeHelper().textInputDecoration("Adresse e-mail", ""),
                keyboardType: TextInputType.emailAddress,
                controller: email,
                validator: (val) {
                  if (!(val!.isEmpty) &&
                      !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                          .hasMatch(val)) {
                    return "Enter a valid email address";
                  }
                  return null;
                },
              ),
              decoration: ThemeHelper().inputBoxDecorationShaddow(),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              width: double.infinity,
              child: FlatButton(
                child: Text(
                  "Reinitialiser le mot de passe",
                  style: TextStyle(
                    fontFamily: 'DM_Sans',
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (C) => LoginSetNew_Password()));
                },
                color: Colors.deepOrange[500],
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {})
            .catchError((e) {
          //  Fluttertoast.showToast(msg: e!.message);
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        //Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
}
