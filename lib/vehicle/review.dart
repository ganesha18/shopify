import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_project/vehicle/vehicleCOnfirmation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Screens/LocationMap.dart';
import '../Screens/cleaningPage/calender1.dart';
import '../Screens/home.dart';

class reviewPage extends StatefulWidget {
  @override
  _reviewPageState createState() => _reviewPageState();
}

class _reviewPageState extends State<reviewPage> {
  final TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(253, 107, 34, 0.8),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                _top(),
                _bodyChat(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _top() {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: <Widget>[
              Container(
                height: 80,
                width: 90,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Review",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 70,
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
                          builder: (context) => LocationMapView()),
                    );
                  },
                  icon: Icon(
                    Icons.doorbell,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _bodyChat() {
    return Expanded(
      child: Container(
          padding: EdgeInsets.only(left: 25, right: 25, top: 25),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45), topRight: Radius.circular(45)),
            color: Colors.white,
          ),
          child: Column(children: [
            SizedBox(
              height: 40,
            ),
            Text("How are your Experience?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Text("your order is successfully Done Do you mind ",
                style: TextStyle(fontSize: 15, color: Colors.grey)),
            SizedBox(
              height: 10,
            ),
            Text("giving a small feedback about your experience?",
                style: TextStyle(fontSize: 15, color: Colors.grey)),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Image.asset(
                  "images/Amoje.JPG",
                  height: 70,
                  width: 330,
                )),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: Text("                                  ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Form(
                key: _formKey,
                child: TextFormField(
                  controller: _controller,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    hintText: '"WRITE A REVIEW ',
                    filled: true,
                  ),
                  maxLines: 5,
                  maxLength: 4096,
                  textInputAction: TextInputAction.done,
                  validator: (String? text) {
                    if (text == null || text.isEmpty) {
                      return 'Please enter a value';
                    }
                    return null;
                  },
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 30, right: 10, top: 50, bottom: 50),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[100]),
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Center(
                            child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        )),
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepOrange[400]),
                      child: TextButton(
                        onPressed: () async {
                          // Only if the input form is valid (the user has entered text)
                          if (_formKey.currentState!.validate()) {
                            // We will use this var to show the result
                            // of this operation to the user
                            String message;

                            try {
                              // Get a reference to the `feedback` collection
                              final collection = FirebaseFirestore.instance
                                  .collection('feedback');

                              // Write the server's timestamp and the user's feedback
                              await collection.doc().set({
                                'timestamp': FieldValue.serverTimestamp(),
                                'feedback': _controller.text,
                              });

                              message = 'Feedback sent successfully';
                            } catch (e) {
                              message = 'Error when sending feedback';
                            }

                            // Show a snackbar with the result
                            ScaffoldMessenger.of(context)
                                .showSnackBar(SnackBar(content: Text(message)));
                            Navigator.pop(context);
                          }
                        },
                        child: Center(
                            child: Text(
                          "Submit",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                      )),
                ],
              ),
            )
          ])),
    );
  }
}
