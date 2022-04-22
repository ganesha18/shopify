import 'package:cloud_firestore/cloud_firestore.dart';

import '../Screens/home.dart';

class feedback_model {
  String? uid;
  String? desc;

  feedback_model({this.uid, this.desc}) {
    // TODO: implement UserModel
    throw UnimplementedError();
  }

  // receiving data from server
  factory feedback_model.fromMap(map) {
    return feedback_model(
      uid: map['uid'],
      desc: map['feedback'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'desc': desc,
    };
  }

  Create() async {
    DocumentReference documentReference =
        await FirebaseFirestore.instance.collection("feedback").doc(uid);
    documentReference.set({});
  }
}
