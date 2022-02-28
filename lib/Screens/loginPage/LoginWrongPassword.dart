import 'package:flutter/material.dart';
import 'package:flutter_project/common/theme_Helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../home.dart';
import '../login.dart';
import 'forgetEmailPage alert.dart';
import 'loginForgetPassword.dart';

class LoginWrong_Password extends StatefulWidget {
  const LoginWrong_Password({Key? key}) : super(key: key);

  @override
  _LoginWrong_PasswordState createState() => _LoginWrong_PasswordState();
}

class _LoginWrong_PasswordState extends State<LoginWrong_Password> {
  bool hidepassword = true;
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
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
              "Let's Sign You In",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
              ),
            ),
          ),
          Text(
            "Welcome back, you've  ",
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
          Text(
            "been missed!.               ",
            style: TextStyle(fontSize: 30, color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: TextFormField(
              decoration:
                  ThemeHelper().textInputDecoration('Email Address', ''),
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
                labelText: "Password",
                hintText: "",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: InkWell(
                  onTap: TogglePasswordView,
                  child: Icon(
                    Icons.visibility,
                  ),
                ),
                contentPadding: EdgeInsets.fromLTRB(20, 15, 25, 15),
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
          FormField<bool>(
            builder: (state) {
              return Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                      value: checkboxValue,
                      onChanged: (value) {
                        setState(() {
                          checkboxValue = value!;
                          state.didChange(value);
                        });
                      }),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Remember Me",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.deepOrange),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      state.errorText ?? '',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Theme.of(context).errorColor,
                        fontSize: 12,
                      ),
                    ),
                  )
                ],
              );
            },
            validator: (value) {
              if (!checkboxValue) {
                return ' ';
              } else {
                return null;
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            margin: EdgeInsets.all(40),
            width: double.infinity,
            child: FlatButton(
              child: Text(
                "Login ",
                style: TextStyle(
                  fontFamily: 'DM_Sans',
                ),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (C) => Home()));
              },
              color: Colors.grey[200],
              textColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Center(
            child: Text("OR"),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Column(children: [
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
                      "      Continue with Google",
                      style: TextStyle(color: Colors.blue),
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
                    child: FaIcon(
                      FontAwesomeIcons.googlePlus,
                      size: 35,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Text(
                  "                 Don't have an account?",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(
                  width: 5,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign UP',
                      style: TextStyle(color: Colors.deepOrange, fontSize: 14),
                    ))
              ]),
            ]),
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
