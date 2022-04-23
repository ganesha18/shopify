import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  List _orders = [];
  var _firestoreInstance = FirebaseFirestore.instance;
  fetchProducts() async {
    QuerySnapshot qn = await _firestoreInstance.collection("Admin1").get();
    setState(() {
      for (int i = 0; i < qn.docs.length; i++) {
        _orders.add({
          'name': qn.docs[i]["name"],
          'Service': qn.docs[i]["Service"],
        });
      }
    });

    return qn.docs;
  }

  @override
  void initState() {
    //TODO: implement activate
    fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: Text("           ADMIN PANEL"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 700,
            width: 640,
            child: ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: _orders.length,
              itemBuilder: (BuildContext context, int index) => Column(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Card(
                      child: Container(
                        height: 100,
                        width: 330,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //    border: Border.all(color: Colors.grey),
                          // color: Colors.deepOrange,
                        ),
                        child: Column(children: [
                          Text(
                            "Name: ${_orders[index]["name"]}",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Service: ${_orders[index]["Service"]}",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
