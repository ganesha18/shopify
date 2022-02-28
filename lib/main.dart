import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Components/BottomSheet.dart';
import 'Components/bottombar.dart';
import 'Components/dialogBox.dart';
import 'Faq.dart';
import 'Screens/HouseShifting/NewCard.dart';
import 'Screens/HouseShifting/commandConfirm.dart';
import 'Screens/cleaningPage/CleaningService.dart';
import 'Screens/cleaningPage/Cleaning_service.dart';
import 'Screens/cleaningPage/calender1.dart';
import 'Screens/cleaningPage/commandConfirm.dart';
import 'Screens/loginPage/login.dart';
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
        home: login());
  }
}
