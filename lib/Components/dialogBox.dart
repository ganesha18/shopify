import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BottomSheet.dart';

class dailogBox extends StatefulWidget {
  const dailogBox({Key? key}) : super(key: key);

  @override
  _dailogBoxState createState() => _dailogBoxState();
}

class _dailogBoxState extends State<dailogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dialog(
        alignment: Alignment.topCenter,
        backgroundColor: Color.fromRGBO(253, 107, 34, 0.8),
        child: Column(
          children: [
            SizedBox(
              height: 180,
            ),
            Center(
                child: RaisedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CustomDialog()),
                );
              },
              label: Text("Dialog Box"),
              icon: Icon(Icons.add),
            )),
            Center(
                child: RaisedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BottomSheet1()),
                );
              },
              label: Text("Dialog Box"),
              icon: Icon(Icons.add),
            )),
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
                      height: 30,
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
                          color: Colors.grey),
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
                          color: Color.fromRGBO(253, 107, 34, 0.8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(253, 107, 34, 0.8),
                radius: 40,
                child: Icon(
                  Icons.all_inbox,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              top: -50,
            )
          ]),
    );
  }
}
