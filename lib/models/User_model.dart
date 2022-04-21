import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class User_model {
  String? uid;
  String? name;
  String? address;
  String? email;
  String? Post;
  String? villa;

  User_model(
      {this.uid, this.name, this.address, this.Post, this.email, this.villa});

  //data from server
  factory User_model.fromMap(map) {
    return User_model(
        uid: map['uid'],
        name: map['name'],
        address: map['address'],
        Post: map['post'],
        email: map['email'],
        villa: map['villa']);
  }
  //sending data to our server

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'address': address,
      'post': Post,
      'email': email,
      'villa': villa
    };
  }

  update() async {
    List firebaseUser = FirebaseAuth.instance.currentUser as List;
    FirebaseFirestore.instance.collection("users").doc(firebaseUser[0]).update({
      'uid': uid,
      'name': name,
      'address': address,
      'post': Post,
      'email': email,
      'villa': villa
    }).then((_) {
      print("success!");
    });
  }
}
