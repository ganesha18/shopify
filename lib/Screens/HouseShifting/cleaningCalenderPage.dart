//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_project/Screens/cleaningPage/calender.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../contact.dart';
import '../login.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Cleaning_service_Calender extends StatefulWidget {
  const Cleaning_service_Calender({Key? key}) : super(key: key);

  @override
  _Cleaning_service_CalenderState createState() =>
      _Cleaning_service_CalenderState();
}

class _Cleaning_service_CalenderState extends State<Cleaning_service_Calender> {
  @override
  Widget build(BuildContext context) {
    var Count = 0;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              //begin: Alignment.topCenter,
              colors: [
                Colors.deepOrange,
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
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
                          MaterialPageRoute(builder: (context) => Cleaning_service_Calender1()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 45,
                  ),
                  Text(
                    "Calender ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 50,
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
                              builder: (context) => Cleaning_service_Calender()),
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
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 30,
                              ),
                              SingleChildScrollView(
                                child: SfCalendar(
                                  view: CalendarView.month,
                                  dataSource:
                                      MeetingDataSource(_getDataSource()),
                                  monthViewSettings: MonthViewSettings(
                                      appointmentDisplayMode:
                                          MonthAppointmentDisplayMode
                                              .appointment),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "House                                       ",
                                style:
                                TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                             Padding(
                               padding: EdgeInsets.only(left: 30),
                                 child:Row(
                                children: [
                                  TextButton(
                                      child: Text(
                                          "7:00".toUpperCase(),
                                          style: TextStyle(fontSize: 16,
                                              color: Colors.black
                                          )
                                      ),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(18.0),
                                                  side: BorderSide(color: Colors.grey)
                                              )
                                          )
                                      ),
                                      onPressed: () => null
                                  ),
                                  SizedBox(width: 7,),
                                  TextButton(
                                      child: Text(
                                          "11:00".toUpperCase(),
                                          style: TextStyle(fontSize: 16,
                                              color: Colors.black)
                                      ),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(18.0),
                                                  side: BorderSide(color: Colors.grey)
                                              )
                                          )
                                      ),
                                      onPressed: () => null
                                  ),
                                  SizedBox(width: 7,),
                                  TextButton(
                                      child: Text(
                                          "13:00".toUpperCase(),
                                          style: TextStyle(fontSize: 16, color: Colors.black)
                                      ),
                                      style: ButtonStyle(
                                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(18.0),
                                                  side: BorderSide(color: Colors.grey)
                                              )
                                          )
                                      ),
                                      onPressed: () => null
                                  ),
                                ],
                              ),),
                              SizedBox(height: 10,),
                              Divider(
                                thickness: 10,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30, right: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.account_circle_sharp,
                                      color: Colors.deepOrange,

                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      "Travailleurs",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 60,
                                    ),
                                    FlatButton(
                                      height: 10,
                                      minWidth: 10,
                                      color: Colors.grey[90],
                                      onPressed: () {},
                                      child: FaIcon(
                                        FontAwesomeIcons.minus,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text("$Count", style: TextStyle(fontSize: 18)),
                                    FlatButton(
                                      height: 10,
                                      minWidth: 10,
                                      color: Colors.grey[90],
                                      onPressed: () {},
                                      child: FaIcon(
                                        FontAwesomeIcons.plus,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.timeline,
                                      color: Colors.deepOrange,
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      "Electricien",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    FlatButton(
                                      height: 10,
                                      minWidth: 10,
                                      color: Colors.grey[90],
                                      onPressed: () {},
                                      child: FaIcon(
                                        FontAwesomeIcons.minus,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text("$Count", style: TextStyle(fontSize: 18)),
                                    FlatButton(
                                      height: 10,
                                      minWidth: 10,
                                      color: Colors.grey[90],
                                      onPressed: () {},
                                      child: FaIcon(
                                        FontAwesomeIcons.plus,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 20,top: 5),
                                child: Container(
                                  height: 60,
                                  width: 325,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Colors.grey),
                                    color: Colors.deepOrange,
                                  ),
                                  child: FlatButton.icon(
                                    onPressed: () {},
                                    label: Center(
                                      child: Text(
                                        "Continuer",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                    icon: Container(
                                      height: 30,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        //border: Border.all(color: Colors.grey),
                                        // color: Colors.redAccent[250],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                        ]),
                        ),]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Meeting> _getDataSource() {
    final List<Meeting> meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime endTime = startTime.add(Duration(hours: 2));
    meetings.add(
        Meeting("Conference", startTime, endTime, Color(0xFF0F8644), false));
    return meetings;
  }
}

class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(List<Meeting> source) {
    appointments = source;
  }

  @override
  DateTime getStartTime(int index) {
    return appointments![index].from;
  }

  @override
  DateTime getEndTime(int index) {
    return appointments![index].to;
  }

  @override
  String getSubject(int index) {
    return appointments![index].eventName;
  }

  @override
  Color getColor(int index) {
    return appointments![index].background;
  }

  @override
  bool isAllDay(int index) {
    return appointments![index].isAllDay;
  }
}

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);

  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
