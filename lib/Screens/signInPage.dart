import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/common/header_widget.dart';
import 'package:flutter_project/common/theme_Helper.dart';
import 'home.dart';
import 'login.dart';

class RegistrationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegistrationPageState();
  }
}

class _RegistrationPageState extends State<RegistrationPage> {
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
            width: 35,
          ),
          Text(
            'Enregistrez vous',
            style: TextStyle(
              color: Colors.black,
              fontFamily: "DM_Sans",
              fontWeight: FontWeight.bold,
            ),
          )
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.fromLTRB(35, 0, 10, 0),
                child: Text(
                  "II semble que vous soyez  nouveau ici, configurons  votre profil",
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
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper()
                                .textInputDecoration('Nom et prenom', ''),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
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
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: TextFormField(
                            decoration: ThemeHelper()
                                .textInputDecoration('Adresse actuelie', ''),
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
                            ),
                          ),
                        ]),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
                            obscureText: true,
                            decoration: ThemeHelper()
                                .textInputDecoration("Mot de passe", ""),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your Mot de passe";
                              }
                              return null;
                            },
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          child: TextFormField(
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
                                      style:
                                          TextStyle(color: Colors.deepOrange),
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
                        SizedBox(height: 10.0),
                        Container(
                          decoration:
                              ThemeHelper().buttonBoxDecoration(context),
                          child: ElevatedButton(
                            style: ThemeHelper().buttonStyle(),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(40, 10, 40, 10),
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                    (Route<dynamic> route) => false);
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
