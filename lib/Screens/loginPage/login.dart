import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/common/theme_Helper.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../Components/bottombar.dart';
import '../home.dart';
import '../signInPage.dart';
import 'forgetPasswordScreen.dart';
import 'package:google_sign_in/google_sign_in.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  bool hidepassword = true;
  String? errorMessage;
  final _formKey = GlobalKey<FormState>();
  bool checkedValue = false;
  bool checkboxValue = false;
  // editing controller
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  // firebase
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Container(
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
                      MaterialPageRoute(builder: (context) => GetStart()),
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
            Center(
              child: Text(
                "Connectez-vous   ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Bienvenue, vous nous avez  ",
              style: TextStyle(fontSize: 25, color: Colors.grey),
            ),
            Text(
              "manque!                                  ",
              style: TextStyle(fontSize: 25, color: Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: TextFormField(
                autofocus: false,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty) {
                    return ("Please Enter Your Email");
                  }
                  // reg expression for email validation
                  if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                      .hasMatch(value)) {
                    return ("Please Enter a valid email");
                  }
                  return null;
                },
                onSaved: (value) {
                  emailController.text = value!;
                },
                textInputAction: TextInputAction.next,
                decoration:
                    ThemeHelper().textInputDecoration('Adresse e-mail', ''),
              ),
              decoration: ThemeHelper().inputBoxDecorationShaddow(),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              child: TextFormField(
                obscureText: hidepassword,
                autofocus: false,
                controller: passwordController,
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
                      borderSide: BorderSide(color: Colors.grey, width: 2.0)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide(color: Colors.red, width: 2.0)),
                ),
                validator: (value) {
                  RegExp regex = new RegExp(r'^.{6,}$');
                  if (value!.isEmpty) {
                    return ("Password is required for login");
                  }
                  if (!regex.hasMatch(value)) {
                    return ("Enter Valid Password(Min. 6 Character)");
                  }
                  return "Enter your Mot de passe";
                },
                onSaved: (value) {
                  passwordController.text = value!;
                },
              ),
              decoration: ThemeHelper().inputBoxDecorationShaddow(),
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
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Remember Me",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPasswordPage()),
                            );
                          },
                          child: Text(
                            "Mot de passe oublie?",
                            style: TextStyle(
                              color: Color.fromRGBO(253, 107, 34, 0.8),
                            ),
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
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: FlatButton(
                child: Text(
                  "Se Connecter",
                  style: TextStyle(
                    fontFamily: 'DM_Sans',
                  ),
                ),
                onPressed: () async {
                  signIn(emailController.text, passwordController.text);
                },
                color: Color.fromRGBO(253, 107, 34, 0.8),
                textColor: Colors.white,
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
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: 270,
                    color: Colors.white54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white54),
                      color: Colors.white,
                    ),
                    child: FlatButton.icon(
                      onPressed: () {
                        signInWithGoogle();
                      },
                      label: Center(
                        child: Text(
                          "        Continue with Google",
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
                          //  color: Colors.redAccent,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Text(
                      "           Vous navez pass de compte? ",
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => GetStart()),
                          );
                        },
                        child: Text(
                          'Sinscrire',
                          style: TextStyle(
                              color: Color.fromRGBO(253, 107, 34, 0.8),
                              fontSize: 14),
                        ))
                  ]),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void TogglePasswordView() {
    setState(() {
      hidepassword = !hidepassword;
    });
  }

  // login function
  void signIn(String email, String password) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) => {
                Fluttertoast.showToast(msg: "Login Successful"),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => bottomBar())),
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
      Fluttertoast.showToast(msg: errorMessage!);
      print(error.code);
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
