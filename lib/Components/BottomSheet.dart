import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/chatbot.dart';

class BottomSheet1 extends StatefulWidget {
  const BottomSheet1({Key? key}) : super(key: key);

  @override
  _BottomSheet1State createState() => _BottomSheet1State();
}

class _BottomSheet1State extends State<BottomSheet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: RaisedButton(
              onPressed: () {
                _bottomSheet(context);
              },
              color: Colors.deepOrange[400],
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Click me",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(70.0),
          ),
        ),
        builder: (BuildContext c) {
          return Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100, right: 15, top: 10),
                child: Row(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mes cartes ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      color: Colors.grey[200],
                      child: TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Ajouter",
                          style: TextStyle(
                            color: Color.fromRGBO(253, 107, 34, 0.8),
                            fontSize: 12,
                          ),
                        ),
                        icon: Icon(
                          Icons.add,
                          color: Colors.grey,
                        ),
                      )),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              Image.asset(
                "images/g1.JPG",
                height: 140,
                width: 170,
              ),
              Center(
                child: Text(
                  "Ajoutez votre carte",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      "II semble que vous nayez pas ajoute de carte de credit ou de debit.  Ajouter une     carte pour un acces plus rapide",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Colors.grey,
                  height: 50,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TextButton(
                    // color: Color.fromRGBO(253, 107, 34, 0.8),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Center(
                      child: Text(
                        "Retour",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )),
            ],
          ));
        });
  }
}
