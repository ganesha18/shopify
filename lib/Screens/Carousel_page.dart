import 'package:flutter/material.dart';
import 'package:flutter_project/Components/Drawar.dart';

class Carousel_page extends StatefulWidget {
  const Carousel_page({Key? key}) : super(key: key);

  @override
  _Carousel_pageState createState() => _Carousel_pageState();
}

class _Carousel_pageState extends State<Carousel_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(children: [
          Drawer1(),
          Text(
            "Shifty -House Service App",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ]),
      ),
      bottomNavigationBar: new Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black,
          //borderRadius: BorderRadius.circular(120.0)
        ),
        padding: EdgeInsets.only(bottom: 10),
        child: Row(
          //  mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FlatButton.icon(
                onPressed: () {},
                color: Colors.white24,
                icon: Icon(Icons.arrow_back, color: Colors.white),
                label: Text(""),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton.icon(
                color: Colors.white24,
                height: 15,
                onPressed: () {},
                icon: Icon(Icons.arrow_forward, color: Colors.white),
                label: Text(""),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton.icon(
                color: Colors.white24,
                onPressed: () {},
                icon: Icon(
                  Icons.assistant,
                  color: Colors.white,
                ),
                label: Text(""),
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton.icon(
                onPressed: () {},
                color: Colors.white24,
                icon: Icon(Icons.home, color: Colors.white),
                label: Text(""),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
