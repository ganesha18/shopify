import 'package:country_code_picker/country_code.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'otp.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _controller = TextEditingController();
  String dialCodeDigits = "+00";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 155.0),
              child: Text(
                "Bienvenue",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DM_Sans',
                  fontSize: 34,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 28.0, left: 5),
              child: Center(
                child: Text(
                  " Enterz votre numero\n de telephone",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: 'DM_Sans',
                      fontSize: 32,
                      color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 46,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              margin: EdgeInsets.only(right: 20, left: 29),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.white24,
                  border: Border.all(color: Colors.grey)),
              child: SizedBox(
                height: 50,
                width: 450,
                child: CountryCodePicker(
                  onChanged: (country) {
                    setState(() {
                      dialCodeDigits = country.dialCode!;
                    });
                  },
                  padding: const EdgeInsets.only(right: 135),
                  initialSelection: "IT",
                  showCountryOnly: false,
                  showOnlyCountryWhenClosed: false,
                  favorite: ["+1", "US", "+92", "PAK"],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              margin: EdgeInsets.only(top: 0, right: 10, left: 19),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      borderSide: BorderSide(color: Colors.grey)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      borderSide: BorderSide(color: Colors.grey)),
                  hintText: "Nume'ro de telephone",
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text(dialCodeDigits),
                  ),
                ),
                maxLength: 12,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              " Poltique de confidentialtie6 et conditions d'utilisation",
              style: TextStyle(
                color: Colors.deepOrange,
                fontFamily: 'DM_Sans',
              ),
            ),
            Container(
              height: 60,
              margin: EdgeInsets.all(40),
              width: double.infinity,
              child: FlatButton(
                child: Text(
                  "Next",
                  style: TextStyle(
                    fontFamily: 'DM_Sans',
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (C) => OTPSCREEN(
                            phone: _controller.text,
                            codeDigits: dialCodeDigits,
                          )));
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
