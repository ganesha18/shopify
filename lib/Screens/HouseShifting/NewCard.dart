import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Components/dialogBox.dart';
import '../../common/theme_Helper.dart';
import '../../vehicle/confirmLocation.dart';
import 'cleaningCalenderPage.dart';

class NewCard extends StatefulWidget {
  const NewCard({Key? key}) : super(key: key);

  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  bool checkboxValue = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              //begin: Alignment.topCenter,
              colors: [
                Color.fromRGBO(253, 107, 34, 0.8),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 2, right: 10),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 90,
                    width: 90,
                    child: IconButton(
                      // color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmationLocation()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 3),
                  Text(
                    "Ajouter un mode de paiement",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 3),
                  Container(
                    height: 70,
                    width: 70,
                    child: IconButton(
                      // color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Cleaning_service_Calender()),
                        );
                      },
                      icon: Icon(
                        Icons.doorbell_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(children: [
                    Padding(
                      padding: EdgeInsets.only(left: 120, top: 20),
                      child: Row(children: [
                        Container(
                          color: Colors.white,
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Carte de credit",
                              style: TextStyle(
                                color: Colors.deepOrange[400],
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        child: TextFormField(
                          decoration:
                              ThemeHelper().textInputDecoration('Nom', ''),
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(children: [
                        Container(
                          height: 70,
                          width: 250,
                          child: TextFormField(
                            decoration: ThemeHelper()
                                .textInputDecoration('Nomero de la carte', ''),
                          ),
                          decoration: ThemeHelper().inputBoxDecorationShaddow(),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 70,
                          width: 60,
                          //  color: Colors.yellow,
                          child: Image.asset(
                            "images/numeroCard.JPG",
                            height: 70,
                            width: 60,
                          ),
                        )
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Row(children: [
                        Container(
                          height: 50,
                          width: 220,
                          // padding: EdgeInsets.fromLTRB(5, 10, 160, 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "Date d'expiration",
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
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400)),
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
                          width: 115,
                          //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "CVV",
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
                                  borderSide:
                                      BorderSide(color: Colors.grey.shade400)),
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
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: FormField<bool>(
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
                                    "Sauvegrader les informations de cette carte",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
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
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 50,
                        width: 330,
                        color: Color.fromRGBO(253, 107, 34, 0.8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: TextButton(
                          // color: Color.fromRGBO(253, 107, 34, 0.8),
                          child: Text(
                            "Ajouter",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          onPressed: () {
                            {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomDialog()),
                              );
                            }
                          },
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Stack(
          overflow: Overflow.visible,
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: 250,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Carte ajoutee avec succes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Retournez a votre page de paiement et selectionnez un nouvelle carte pour payer!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[100]),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    RaisedButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        "RETOUR AU PAIEMENT",
                        style: TextStyle(
                          color: Colors.deepOrange[400],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Colors.deepOrange[400],
                radius: 30,
                child: Icon(
                  Icons.all_inbox,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              top: -30,
            )
          ]),
    );
  }
}
