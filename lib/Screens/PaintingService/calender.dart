//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import '../../vehicle/commandConfirmation.dart';
import '../cleaningPage/calender.dart';
import '../contact.dart';
import '../login.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

class Painting_service_Calender extends StatefulWidget {
  const Painting_service_Calender({Key? key}) : super(key: key);

  @override
  _Painting_service_CalenderState createState() =>
      _Painting_service_CalenderState();
}

class _Painting_service_CalenderState
    extends State<Painting_service_Calender> {
  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();

  late CalendarCarousel _calendarCarouselNoHeader;

  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
       // borderRadius: BorderRadius.all(Radius.circular(1000)),
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

  bool checkboxValue= false;
  @override
  Widget build(BuildContext context) {
    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      todayBorderColor: Colors.yellow,
      onDayPressed: (DateTime date, List<Event> events) {
        this.setState(() => _currentDate2 = date);
        events.forEach((event) => print(event.title));
      },
      daysHaveCircularBorder: true,
      showOnlyCurrentMonthDate: false,
      weekendTextStyle: TextStyle(
        color: Colors.red,
      ),
     // thisMonthDayBorderColor: Colors.grey,
      weekFormat: false,
//      firstDayOfWeek: 4,
      markedDatesMap: _markedDateMap,
      height: 290.0,
      selectedDateTime: _currentDate2,
      targetDateTime: _targetDateTime,
      customGridViewPhysics: NeverScrollableScrollPhysics(),
      markedDateCustomShapeBorder:
      CircleBorder(side: BorderSide(color: Colors.yellow)),
      markedDateCustomTextStyle: TextStyle(
        fontSize: 18,
        color: Colors.yellow,
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: Colors.yellow,
      ),

      todayButtonColor: Colors.yellow,
      selectedDayTextStyle: TextStyle(
        color: Colors.yellow,
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            //begin: Alignment.topCenter,
              colors: [
                Colors.black,
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
                    width: 20,
                  ),
                  Text(
                    "Choose Date & Time",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 20,
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
                        Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                ),
                                child: new Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Text(
                                          _currentMonth,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24.0,
                                          ),
                                        )),
                                    FlatButton(
                                      child: Text('<', style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30
                                      ),),
                                      onPressed: () {
                                        setState(() {
                                          _targetDateTime = DateTime(
                                              _targetDateTime.year,
                                              _targetDateTime.month - 1);
                                          _currentMonth = DateFormat.yMMM()
                                              .format(_targetDateTime);
                                        });
                                      },
                                    ),
                                    FlatButton(
                                      child: Text('>',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30
                                        ),
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
                                    )
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
                          padding: EdgeInsets.only(left: 50, bottom: 10),
                          child: Text(
                            "Pick time",
                            style:
                            TextStyle(color: Colors.grey, fontSize: 18),
                          ),),

                        Padding(
                          padding: EdgeInsets.only(left: 30, bottom: 10),
                          child: Row(
                            children: [
                              TextButton(
                                  child: Text(
                                      "Afternoon".toUpperCase(),
                                      style: TextStyle(fontSize: 16,
                                          color: Colors.white,
                                      )
                                  ),
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
                                      foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
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
                                      "Late Morning".toUpperCase(),
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
                            ],
                          ),),
                        Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Row(
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
                                      "12:00".toUpperCase(),
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
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: FormField<bool>(
                            builder: (state) {
                              return Row(
                                //   crossAxisAlignment: CrossAxisAlignment.start,
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
                                      Text(
                                        "Include All painting instruments..",
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
                                ],
                              );
                            },
                            validator: (value) {
                              if (!checkboxValue) {
                                return ' ';
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Container(
                            height: 60,
                            width: 325,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              color: Colors.yellow,
                            ),
                            child: FlatButton.icon(
                              onPressed: () {},
                              label: Center(
                                child: Text(
                                  "Proceed",
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
