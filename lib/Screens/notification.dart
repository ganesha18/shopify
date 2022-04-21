import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'HouseShifting/Service_de_menege.dart';
import 'contact.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<notification> {
  List _notifications = [];
  var _firestoreInstance = FirebaseFirestore.instance;

  fetchProducts() async {
    QuerySnapshot qn =
        await _firestoreInstance.collection("notificationScreen").get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        _notifications.add({
          "img": qn.docs[i]["img"],
          "text": qn.docs[i]["text"],
        });
      }
    });

    return qn.docs;
  }

  @override
  void initState() {
    fetchProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color.fromRGBO(253, 107, 34, 0.8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
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
                          MaterialPageRoute(builder: (context) => Contact()),
                        );
                      },
                      icon: Icon(
                        Icons.border_all_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    " Notification ",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    child: IconButton(
                      // color: Colors.white,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Service_de_menage()),
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
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(children: [
                          Container(
                            child: Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text(
                                "Aujourd'hui                      ",
                                style: TextStyle(
                                  //   fontWeight: FontWeight.bold,
                                  fontFamily: 'DM_Sans',
                                  fontSize: 30,
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 700,
                            width: 640,
                            child: ListView.builder(
                              physics: ClampingScrollPhysics(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: _notifications.length,
                              itemBuilder: (BuildContext context, int index) =>
                                  Column(
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    child: Card(
                                      child: Container(
                                        height: 100,
                                        width: 330,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          //    border: Border.all(color: Colors.grey),
                                          // color: Colors.deepOrange,
                                        ),
                                        child: Row(children: [
                                          Image.network(
                                            _notifications[index]["img"][0],
                                            height: 130,
                                            width: 90,
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Text(
                                            "${_notifications[index]["text"]}",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black),
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ]),
                      ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
