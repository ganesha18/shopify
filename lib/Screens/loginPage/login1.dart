import 'package:flutter/material.dart';

class Login1 extends StatefulWidget {
  const Login1({Key? key}) : super(key: key);

  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 25, top: 100),
            child: Center(
              child: Text(
                "Connectez-vous",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              FlatButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //    border: Border.all(color: Colors.grey),
                    // color: Colors.deepOrange,
                  ),
                  child: Image.asset(
                    "images/particular.JPG",
                    height: 160,
                    width: 160,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //    border: Border.all(color: Colors.grey),
                    // color: Colors.deepOrange,
                  ),
                  child: Image.asset(
                    "images/enterprise.JPG",
                    height: 160,
                    width: 160,
                  ),
                ),
              ),
            ],
          ),
        ]),
      ],
    ));
  }
}
