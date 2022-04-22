import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/common/theme_Helper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'home.dart';
import 'login.dart';
import 'loginPage/login.dart';

class GetStart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GetStartState();
  }
}

class _GetStartState extends State<GetStart> {
  final _auth = FirebaseAuth.instance;
  late final name = new TextEditingController();
  final email = new TextEditingController();
  final Password = new TextEditingController();
  final Password1 = new TextEditingController();
  final Address = new TextEditingController();
  final Post = new TextEditingController();
  final villa = new TextEditingController();
  String? errorMessage;
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        shadowColor: Colors.white24,
        title: Row(children: [
          Container(
            child: IconButton(
              color: Colors.black,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              icon: Icon(
                Icons.arrow_back_rounded,
              ),
            ),
          ),
          SizedBox(
            width: 60,
          ),
          Text(
            'Enregistrez vous',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontFamily: "DM_Sans",
              fontWeight: FontWeight.bold,
            ),
          )
        ]),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(35, 0, 10, 0),
                  child: Text(
                    "II semble que vous soyez  nouveau ici, configurons  votre profil.",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.grey,
                      fontFamily: 'DM_Sans',
                    ),
                  )),
              Container(
                margin: EdgeInsets.fromLTRB(25, 30, 25, 10),
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                alignment: Alignment.center,
                child: Column(children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: TextFormField(
                            controller: name,
                            keyboardType: TextInputType.text,
                            decoration: ThemeHelper()
                                .textInputDecoration('Nom et prenom', ''),
                            onSaved: (value) {
                              name.text = value!;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: ThemeHelper()
                                .textInputDecoration("Adresse e-mail", ""),
                            validator: (val) {
                              if (!(val!.isEmpty) &&
                                  !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                      .hasMatch(val)) {
                                return "Enter a valid email address";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              email.text = value!;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: TextFormField(
                            controller: Address,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            decoration: ThemeHelper()
                                .textInputDecoration('Adresse actuelie', ''),
                            onSaved: (value) {
                              Address.text = value!;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 10.0),
                        Row(children: [
                          Container(
                            height: 50,
                            width: 120,
                            // padding: EdgeInsets.fromLTRB(5, 10, 160, 10),
                            child: TextFormField(
                              controller: Post,
                              keyboardType: TextInputType.number,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Post Code",
                                hintText: "",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 10, 20, 10),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(color: Colors.grey)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2.0)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                              ),
                              onSaved: (value) {
                                Post.text = value!;
                              },
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 50,
                            width: 185,
                            //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: TextFormField(
                              controller: villa,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                labelText: "Villa",
                                hintText: "",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20, 10, 25, 10),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(color: Colors.grey)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey.shade400)),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 2.0)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: BorderSide(
                                        color: Colors.red, width: 2.0)),
                              ),
                              onSaved: (value) {
                                villa.text = value!;
                              },
                            ),
                          ),
                        ]),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            controller: Password,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            obscureText: true,
                            decoration: ThemeHelper()
                                .textInputDecoration("Mot de passe", ""),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Mot de passe";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              Password.text = value!;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            controller: Password1,
                            keyboardType: TextInputType.text,
                            textInputAction: TextInputAction.next,
                            obscureText: true,
                            autofocus: true,
                            decoration: ThemeHelper().textInputDecoration(
                                "Confirmez votre Mot de passe", ""),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Mot de passe";
                              }
                              return null;
                            },
                            onSaved: (value) {
                              Password1.text = value!;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 15.0),
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "En creant un compte vous acceptez nos",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "Terms et conditions",
                                      style: TextStyle(
                                        color:
                                            Color.fromRGBO(253, 107, 34, 0.9),
                                      ),
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
                      ],
                    ),
                  ),
                  //SizedBox(height: 10.0),
                  Container(
                    height: 60,
                    margin: EdgeInsets.all(10),
                    width: 350,
                    child: FlatButton(
                      child: Text(
                        "Continue",
                      ),
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          signUp(email.text, Password.text);
                          sendUserDataToDB();
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
              Center(
                child: Text(
                  "Vous avez deja un compte? ",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => login()));
                      },
                      child: Text(
                        "Connectez-vous",
                        style: TextStyle(
                          color: Color.fromRGBO(253, 107, 34, 0.9),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }

  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {sendUserDataToDB()})
            .catchError((e) {
          Fluttertoast.showToast(msg: e!.message);
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

  sendUserDataToDB() async {
    final FirebaseAuth _auth = FirebaseAuth.instance;
    var currentUser = _auth.currentUser;

    CollectionReference _collectionRef =
        FirebaseFirestore.instance.collection("users-form-data");
    return _collectionRef
        .doc(currentUser!.email)
        .set({
          'name': name.text,
          'email': email.text,
          'post': Post.text,
          'address': Address.text,
          'villa': villa.text,
        })
        .then((value) =>
            Navigator.push(context, MaterialPageRoute(builder: (_) => login())))
        .catchError((error) => print("something is wrong. $error"));
  }

  postDetailsToFirestore() async {
    final collection = FirebaseFirestore.instance.collection('users');
    User? user = _auth.currentUser;
    // Write the server's timestamp and the user's feedback
    await collection.doc().set({
      'name': name.text,
      'email': email.text,
      'post': Post.text,
      'address': Address.text,
      'villa': villa.text,
      'uid': user
    });
    Fluttertoast.showToast(msg: "Account created successfully :) ");

    Navigator.pushAndRemoveUntil((context),
        MaterialPageRoute(builder: (context) => Home()), (route) => false);
  }
}
