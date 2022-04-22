import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/common/theme_Helper.dart';
import 'forgetEmailPage alert.dart';
import 'login.dart';

class EmailForgetPassword extends StatefulWidget {
  const EmailForgetPassword({Key? key}) : super(key: key);

  @override
  _EmailForgetPasswordState createState() => _EmailForgetPasswordState();
}

class _EmailForgetPasswordState extends State<EmailForgetPassword> {
  final _formKey = GlobalKey<FormState>();
  final email = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Column(children: [
            SizedBox(
              height: 15,
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
            Padding(
              padding: EdgeInsets.all(0),
              child: Column(children: [
                Text(
                  "Mot de passe oublié  ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  " Entrez votre adresse e-mail  ",
                  style: TextStyle(fontSize: 23, color: Colors.grey),
                ),
                Text(
                  " pour reinitialiser le mot de    ",
                  style: TextStyle(fontSize: 23, color: Colors.grey),
                ),
                Text(
                  " passe.                                       ",
                  style: TextStyle(
                      //fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.grey),
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    child: TextFormField(
                      controller: email,
                      decoration: ThemeHelper()
                          .textInputDecoration("Adresse e-mail", ""),
                      keyboardType: TextInputType.emailAddress,
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
                ),
              ]),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              margin: EdgeInsets.all(20),
              width: double.infinity,
              child: FlatButton(
                child: Text(
                  "Reinitialiser le mot de passe",
                  style: TextStyle(
                    fontFamily: 'DM_Sans',
                    fontSize: 18,
                  ),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    await FirebaseAuth.instance
                        .sendPasswordResetEmail(email: email.text)
                        .then((value) => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LoginForgetPasswordResetEmail())));
                  }
                },
                color: Color.fromRGBO(253, 107, 34, 0.8),
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
}
