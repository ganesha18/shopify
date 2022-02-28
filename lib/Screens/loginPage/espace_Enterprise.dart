import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/Screens/loginPage/setNewPassword.dart';
import 'package:flutter_project/Screens/signInPage.dart';
import 'package:pinput/pin_put/pin_put.dart';

import '../home.dart';
import '../login.dart';
import 'LoginSetNewPassword.dart';

class Enspace_Entreprise extends StatefulWidget {
  final String phone;
  final String codeDigits;
  const Enspace_Entreprise(
      {Key? key, required this.phone, required this.codeDigits})
      : super(key: key);

  @override
  _Enspace_EntrepriseState createState() => _Enspace_EntrepriseState();
}

class _Enspace_EntrepriseState extends State<Enspace_Entreprise> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  String? verificationCode;
  final TextEditingController _pinOTPCodeController = TextEditingController();
  final FocusNode _pinOTPCodeFoucus = FocusNode();

  final BoxDecoration pinOTPCodeController = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    border: Border.all(
      color: Colors.grey,
    ),
  );
  @override
  void initState() {
    super.initState();
    verifyPhoneNumber();
  }

  verifyPhoneNumber() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: "${widget.codeDigits + widget.phone}",
      verificationCompleted: (PhoneAuthCredential credential) async {
        await FirebaseAuth.instance
            .signInWithCredential(credential)
            .then((value) {
          if (value.user != null) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (c) => SetNew_Password()));
          }
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(e.message.toString()),
          duration: Duration(seconds: 3),
        ));
      },
      codeSent: (String vID, int? resendToken) {
        setState(() {
          verificationCode = vID;
        });
      },
      codeAutoRetrievalTimeout: (String vID) {
        setState(() {
          verificationCode = vID;
        });
      },
      timeout: Duration(seconds: 60),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
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
                  MaterialPageRoute(
                      builder: (context) => LoginSetNew_Password()),
                );
              },
              icon: Icon(
                Icons.arrow_back_rounded,
              ),
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Text(
            'Espace Entreprise',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'DM_Sans',
            ),
          )
        ]),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Un code d'authentication a ete envoye ",
                style: TextStyle(
                  //      fontWeight: FontWeight.w300,
                  fontSize: 16,
                  color: Colors.grey,
                  fontFamily: 'DM_Sans',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    verifyPhoneNumber();
                  },
                  child: Text(
                    "",
                    //: ${widget.codeDigits}-${widget.phone}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 66.0,
                right: 66.0,
                top: 30,
                bottom: 30,
              ),
              child: PinPut(
                fieldsCount: 4,
                textStyle: TextStyle(
                  fontSize: 27.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                eachFieldHeight: 70.0,
                eachFieldWidth: 50.0,
                focusNode: _pinOTPCodeFoucus,
                controller: _pinOTPCodeController,
                submittedFieldDecoration: pinOTPCodeController,
                selectedFieldDecoration: pinOTPCodeController,
                followingFieldDecoration: pinOTPCodeController,
                pinAnimationType: PinAnimationType.fade,
                onSubmit: (pin) async {
                  try {
                    await FirebaseAuth.instance
                        .signInWithCredential(PhoneAuthProvider.credential(
                            verificationId: verificationCode!, smsCode: pin))
                        .then((value) async {
                      if (value.user != null) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => Home()),
                            (route) => false);
                      }
                    });
                  } catch (e) {
                    FocusScope.of(context).unfocus();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        'invalid OTP',
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontFamily: 'DM_Sans',
                        ),
                      ),
                      duration: Duration(seconds: 3),
                    ));
                  }
                },
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: FlatButton(
                child: Text(
                  "Envoyer",
                ),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (C) => Home()));
                },
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
