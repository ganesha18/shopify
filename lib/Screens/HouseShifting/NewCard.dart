import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_braintree/flutter_braintree.dart';
import '../../Components/dialogBox.dart';
import '../../common/theme_Helper.dart';
import '../../vehicle/confirmLocation.dart';
import '../cleaningPage/commandConfirm.dart';
import 'cleaningCalenderPage.dart';
import 'commandConfirm.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NewCard extends StatefulWidget {
  const NewCard({Key? key}) : super(key: key);

  @override
  _NewCardState createState() => _NewCardState();
}

class _NewCardState extends State<NewCard> {
  bool checkboxValue = false;
  late String tokenizationKey = 'sandbox_d58mdypz_k5nt8znxd6zhc2dz';
  final _formKey = GlobalKey<FormState>();
  final name = new TextEditingController();
  final Card_number = new TextEditingController();
  final Expired_Month = new TextEditingController();
  final Expired_year = new TextEditingController();
  final CVV = new TextEditingController();
  final Service = new TextEditingController();
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
                          controller: name,
                          keyboardType: TextInputType.text,
                          decoration:
                              ThemeHelper().textInputDecoration('Nom', ''),
                        ),
                        decoration: ThemeHelper().inputBoxDecorationShaddow(),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      child: Container(
                        child: TextFormField(
                          controller: Service,
                          keyboardType: TextInputType.text,
                          decoration: ThemeHelper()
                              .textInputDecoration('Specify service', ''),
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
                            controller: Card_number,
                            keyboardType: TextInputType.number,
                            decoration: ThemeHelper()
                                .textInputDecoration('Nomero de la carte', ''),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your name";
                              }
                              return null;
                            },
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
                          width: 115,
                          //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: Expired_Month,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "month",
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
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your expired month";
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 100,
                          //padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            controller: Expired_year,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              labelText: "year",
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
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your year";
                              }
                              return null;
                            },
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
                            keyboardType: TextInputType.number,
                            controller: CVV,
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
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Enter your CVV";
                              }
                              return null;
                            },
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            onPressed: () async {
                              {
                                var request = BraintreeDropInRequest(
                                  tokenizationKey:
                                      'sandbox_d58mdypz_k5nt8znxd6zhc2dz',
                                  collectDeviceData: true,
                                  googlePaymentRequest:
                                      BraintreeGooglePaymentRequest(
                                    totalPrice: '4.20',
                                    currencyCode: 'USD',
                                    billingAddressRequired: false,
                                  ),
                                  paypalRequest: BraintreePayPalRequest(
                                    amount: '4.20',
                                    displayName: '$name'.toString(),
                                  ),
                                  cardEnabled: true,
                                );
                                final result =
                                    await BraintreeDropIn.start(request);
                              }
                              final request1 = BraintreeCreditCardRequest(
                                cardNumber: '$Card_number'.toString(),
                                expirationMonth: '$Expired_Month'.toString(),
                                expirationYear: '$Expired_year'.toString(),
                                cvv: '$CVV'.toString(),
                              );
                              final result = await Braintree.tokenizeCreditCard(
                                tokenizationKey =
                                    "sandbox_d58mdypz_k5nt8znxd6zhc2dz",
                                request1,
                              );
                              sendUserDataToDB();
                              sendUserDataToDB1();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CustomDialog()),
                              );
                            }),
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

  sendUserDataToDB1() async {
    final collection = FirebaseFirestore.instance.collection('Admin1');

    // Write the server's timestamp and the user's feedback
    await collection.doc().set({
      'timestamp': FieldValue.serverTimestamp(),
      'name': name.text,
      'Service': Service.text,
      'Card_number': Card_number.text,
      'Expired_Month': Expired_Month.text,
      'Expired_year': Expired_year.text,
      'CVV': CVV.text,
    });
  }

  sendUserDataToDB() async {
    final collection = FirebaseFirestore.instance.collection('Admin');

    // Write the server's timestamp and the user's feedback
    await collection.doc(FirebaseAuth.instance.currentUser!.email).set({
      'timestamp': FieldValue.serverTimestamp(),
      'name': name.text,
      'Service': Service.text,
      'Card_number': Card_number.text,
      'Expired_Month': Expired_Month.text,
      'Expired_year': Expired_year.text,
      'CVV': CVV.text,
    });
  }

  Future<void> LAUNCH_NATIVE_DROP_IN(
    String name,
  ) async {
    var request = BraintreeDropInRequest(
      tokenizationKey: 'sandbox_d58mdypz_k5nt8znxd6zhc2dz',
      collectDeviceData: true,
      googlePaymentRequest: BraintreeGooglePaymentRequest(
        totalPrice: '4.20',
        currencyCode: 'USD',
        billingAddressRequired: false,
      ),
      paypalRequest: BraintreePayPalRequest(
        amount: '4.20',
        displayName: '$name',
      ),
      cardEnabled: true,
    );
    final result = await BraintreeDropIn.start(request);
    if (result != null) {
      // showNonce(result.paymentMethodNonce);
    }
  }

  Future<void> TOKENIZE_CREDIT_CARD(
      double number, int expMonth, int expyear, int cvv) async {
    final request = BraintreeCreditCardRequest(
      cardNumber: 'number',
      expirationMonth: 'expMonth',
      expirationYear: 'expyear',
      cvv: 'cvv',
    );
    String tokenizationKey = "sandbox_d58mdypz_k5nt8znxd6zhc2dz";
    final result = await Braintree.tokenizeCreditCard(
      tokenizationKey = "sandbox_d58mdypz_k5nt8znxd6zhc2dz",
      request,
    );
    if (result != null) {
      //   showNonce(result);
    }
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CommandConfirme1()));
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
