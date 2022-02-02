import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Components/bottombar.dart';
import 'Screens/home.dart';
import 'Screens/onbording.dart';
import 'Screens/signInPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: bottomBar(),
    );
  }
}
