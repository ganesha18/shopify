import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/Screens/signInPage.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'home.dart';
import 'login.dart';
import 'loginPage/forgetEmailPage alert.dart';

class OTPSCREEN extends StatefulWidget {
  final String phone;
  final String codeDigits;
  const OTPSCREEN({Key? key, required this.phone, required this.codeDigits})
      : super(key: key);

  @override
  _OTPSCREENState createState() => _OTPSCREENState();
}

class _OTPSCREENState extends State<OTPSCREEN> {
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
                .push(MaterialPageRoute(builder: (c) => Home()));
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
                  MaterialPageRoute(builder: (context) => GetStart()),
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
            'Verification de I\'OTP',
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
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                "in code d'authentication à été envoye à ",
                style: TextStyle(
                  //      fontWeight: FontWeight.w300,
                  fontSize: 16,
                  fontFamily: 'DM_Sans',
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "(+212)x xxxxxxxx",
                style: TextStyle(
                  //     fontWeight: FontWeight.w300,
                  fontSize: 16,
                  fontFamily: 'DM_Sans',
                  color: Color.fromRGBO(253, 107, 34, 0.8),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
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
                          color: Color.fromRGBO(253, 107, 34, 0.7),
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
                color: Color.fromRGBO(253, 107, 34, 0.8),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  "              Code envoye Renvoyer le code dans",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "    00.50",
                  style: TextStyle(
                    color: Color.fromRGBO(253, 107, 34, 0.8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
