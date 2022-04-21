import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../Screens/home.dart';

class Register_model {
  String? email;
  String? uid;
  String? name;
  String? address;
  String? Post;
  String? villa;

  Register_model(
      {this.uid, this.email, this.name, this.address, this.Post, this.villa}) {
    // TODO: implement UserModel
    throw UnimplementedError();
  }

  // receiving data from server
  factory Register_model.fromMap(map) {
    return Register_model(
      uid: map['uid'],
      email: map['email'],
      name: map['name'],
      address: map['address'],
      Post: map['post'],
      villa: map['villa'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'address': address,
      'post': Post,
      'villa': villa,
    };
  }

  Create() async {
    DocumentReference documentReference = await FirebaseFirestore.instance
        .collection("User_registeration")
        .doc(uid);
    documentReference.set({});
  }
}
