import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  String rating = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Rating: $rating",
            style: TextStyle(fontSize: 40),
          ),
          const SizedBox(
            height: 32,
          ),
          buidRating(),
          const SizedBox(
            height: 32,
          ),
          TextButton(
              onPressed: () {
                showRating();
              },
              child: Text(
                "Show Dialog",
                style: TextStyle(
                  fontSize: 32,
                ),
              ))
        ],
      )),
    );
  }

  Widget buidRating() => RatingBar.builder(
        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        updateOnDrag: true,
        itemSize: 35,
        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        onRatingUpdate: (rating) {
          setState(() {
            this.rating = rating.toString();
          });
          print(rating);
        },
      );
  void showRating() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text("Rating this App"),
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Please Leave a Star rating",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 32,
                ),
                buidRating(),
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    FirebaseFirestore.instance
                        .collection('rating')
                        .add({'rating': '$rating'});
                    Navigator.pop(context);
                  },
                  child: Text(
                    "OK",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
            ],
          ));
}
