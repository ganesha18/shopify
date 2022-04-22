import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/chatbot.dart';

import '../Screens/HouseShifting/NewCard.dart';

class BottomSheet2 extends StatefulWidget {
  const BottomSheet2({Key? key}) : super(key: key);

  @override
  _BottomSheet2State createState() => _BottomSheet2State();
}

class _BottomSheet2State extends State<BottomSheet2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _bottomSheet(context),
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
                padding: EdgeInsets.only(left: 80, right: 15, top: 10),
                child: Row(children: [
                  Text(
                    "Mes cartes ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  RaisedButton.icon(
                    color: Colors.grey[200],
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
                      color: Colors.deepOrange[400],
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "images/visa.JPG",
                height: 150,
                width: 280,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color.fromRGBO(253, 107, 34, 0.8),
                  height: 50,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: RaisedButton(
                    color: Color.fromRGBO(253, 107, 34, 0.8),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewCard()));
                    },
                    child: Center(
                      child: Text(
                        "Confirmer(\$56)",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  color: Colors.grey,
                  height: 50,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: RaisedButton(
                    color: Colors.grey,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewCard()));
                    },
                    child: Center(
                      child: Text(
                        "Annuler",
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
