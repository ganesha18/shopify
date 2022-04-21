import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

class SendSms extends StatefulWidget {
  @override
  _SendSmsState createState() => new _SendSmsState();
}

class _SendSmsState extends State<SendSms> {
  static const platform = const MethodChannel('sendSms');

  Future<Null> sendSms() async {
    print("SendSMS");
    try {
      final String result = await platform.invokeMethod(
          'send', <String, dynamic>{
        "phone": "+923313571291",
        "msg": "Hello! I'm sent programatically."
      }); //Replace a 'X' with 10 digit phone number
      print(result);
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
      child: new Container(
        alignment: Alignment.center,
        child: new FlatButton(
            onPressed: () => sendSms(), child: const Text("Send SMS")),
      ),
    );
  }
}
