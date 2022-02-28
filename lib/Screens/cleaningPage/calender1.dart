//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import '../../vehicle/VichleHomeScreen.dart';
import '../contact.dart';
import '../login.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

import 'calender.dart';

class Cleaning_service_Calender2 extends StatefulWidget {
  const Cleaning_service_Calender2({Key? key}) : super(key: key);

  @override
  _Cleaning_service_Calender2State createState() =>
      _Cleaning_service_Calender2State();
}

class _Cleaning_service_Calender2State
    extends State<Cleaning_service_Calender2> {
  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();

  late CalendarCarousel _calendarCarouselNoHeader;

  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
    //    borderRadius: BorderRadius.all(Radius.circular(1000)),
        border: Border.all(color: Colors.blue, width: 2.0)),
    child: new Icon(
      Icons.person,
      color: Colors.amber,
    ),
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {
      new DateTime(2020, 2, 10): [
        new Event(
          date: new DateTime(2020, 2, 14),
          title: 'Event 1',
          icon: _eventIcon,
          dot: Container(
            margin: EdgeInsets.symmetric(horizontal: 1.0),
            color: Colors.red,
            height: 5.0,
            width: 5.0,
          ),
        ),
        new Event(
          date: new DateTime(2020, 2, 10),
          title: 'Event 2',
          icon: _eventIcon,
        ),
        new Event(
          date: new DateTime(2020, 2, 15),
          title: 'Event 3',
          icon: _eventIcon,
        ),
      ],
    },
  );

  bool checkboxValue =false;
  @override
  Widget build(BuildContext context) {
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.deepOrange,
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
      //thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
//      firstDayOfWeek: 4,
      markedDatesMap: _markedDateMap,
      height: 360.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
      CircleBorder(side: BorderSide(color: Colors.yellow)),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: Colors.blue,
      ),

      todayButtonColor: Colors.yellow,
      selectedDayTextStyle: TextStyle(
        color: Colors.white,
      ),
      minSelectedDate: _currentDate.subtract(Duration(days: 360)),
      maxSelectedDate: _currentDate.add(Duration(days: 360)),
      prevDaysTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.pinkAccent,
      ),
      inactiveDaysTextStyle: TextStyle(
        color: Colors.tealAccent,
        fontSize: 16,
      ),
      onCalendarChanged: (DateTime date) {
        this.setState(() {
          _targetDateTime = date;
          _currentMonth = DateFormat.yMMM().format(_targetDateTime);
        });
      },
      onDayLongPressed: (DateTime date) {
        print('long pressed date $date');
      },
    );
    var Count=0;
    return new Scaffold(
      body: Container(
        width: double.infinity,
        color: Color.fromRGBO(253, 107, 34, 0.8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //begin: Alignment.topCenter,
              colors: [
               // Colors.deepOrange,
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10),
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
                    width: 50,
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
                              builder: (context) => LoginScreen()),
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
                    top: 10,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                ),
                                child: new Row(
                                  children: <Widget>[
                                    Expanded(
                                  child:Padding(
                                  padding: EdgeInsets.only(
                                    left: 20
                                  ),
                                  child:Text(
                                       _currentMonth,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 34.0,
                                          ),
                                  ),)),
                                    SizedBox(height: 5,),
                                    CircleAvatar(
                                      backgroundColor: Colors.white54,
                                      child:TextButton(

                                      child: Icon(Icons.arrow_back,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _targetDateTime = DateTime(
                                              _targetDateTime.year,
                                              _targetDateTime.month - 1);
                                          _currentMonth = DateFormat.yMMM()
                                              .format(_targetDateTime);
                                        });
                                      },
                                    ),),
                           CircleAvatar(
                               backgroundColor: Colors.white54,
                            child:TextButton(
                                      child: Icon(Icons.arrow_forward,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _targetDateTime = DateTime(
                                              _targetDateTime.year,
                                              _targetDateTime.month + 1);
                                          _currentMonth = DateFormat.yMMM()
                                              .format(_targetDateTime);
                                        });
                                      },
                                    )),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 12.0),
                                child: _calendarCarouselNoHeader,
                              ), //
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            "House",
                            style:
                            TextStyle(color: Colors.grey, fontSize: 18),
                          ),),
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Row(
              children: [
                TextButton(
                    child: Text(
                        "Main".toUpperCase(),
                        style: TextStyle(fontSize: 16,
                            color: Colors.white
                        )
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.grey)
                            )
                        )
                    ),
                    onPressed: () => null
                ),
                SizedBox(width: 10,),
                TextButton(
                    child: Text(
                        "Apres-midi".toUpperCase(),
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
    ]),),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child:
                        Row(
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
                              SizedBox(width: 10,),
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
                              SizedBox(width: 10,),
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
                        SizedBox(
                          height: 3,),
                            Padding(
                              padding: EdgeInsets.only(left: 5) ,
                            child: FormField<bool>(
                          builder: (state) {
                            return Padding(
                            padding: EdgeInsets.only(left: 20),
                              child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: checkboxValue,
                                    onChanged: (value) {
                                      setState(() {
                                        checkboxValue = value!;
                                        state.didChange(value);
                                      });
                                    }),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 15,),
                                    Text(
                                      "Inclure le nettoryage instruments",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    state.errorText ?? '',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Theme.of(context).errorColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                            ]),);
                          },
                          validator: (value) {
                            if (!checkboxValue) {
                              return ' ';
                            } else {
                              return null;
                            }
                          },
                        ),),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30,top: 10),
                          child: Container(
                            height: 60,
                            width: 325,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              color: Colors.deepOrange[400],
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
