//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import '../../vehicle/VichleHomeScreen.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';

import '../Screens/HouseShifting/NewCard.dart';
import '../Screens/PaintingService/calender.dart';
import '../Screens/history/HouseShiftingMap.dart';
import '../Screens/login.dart';

class ConfirmationLocation extends StatefulWidget {
  const ConfirmationLocation({Key? key}) : super(key: key);

  @override
  _ConfirmationLocationState createState() =>
      _ConfirmationLocationState();
}

class _ConfirmationLocationState
    extends State<ConfirmationLocation> {
  DateTime _currentDate = DateTime.now();
  DateTime _currentDate2 = DateTime.now();
  String _currentMonth = DateFormat.yMMM().format(DateTime.now());
  DateTime _targetDateTime = DateTime.now();

  late CalendarCarousel _calendarCarouselNoHeader;

  static Widget _eventIcon = new Container(
    decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(1000)),
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
      thisMonthDayBorderColor: Colors.grey,
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
        color: Colors.blue,
      ),
      showHeader: false,
      todayTextStyle: TextStyle(
        color: Colors.blue,
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
                          MaterialPageRoute(builder: (context) => VehichleHomeScreen()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Confirm Location ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 30,
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
                              builder: (context) =>Painting_service_Calender()),
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

                                child: Column(
                                  children:[
                                   Padding(
                                     padding: EdgeInsets.only(left: 5),
                                  child:Text("Location                  ", style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w600,

                                    ),),),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child:Text("Please Choose your destination location   ", style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,

                                      ),),),
                                 Row(
                                   children:[
                                     Padding(
                                       padding: EdgeInsets.only(left: 10),
                                       child:Text("accurately.For any info call ", style: TextStyle(
                                         fontSize: 16,
                                         fontWeight: FontWeight.w600,

                                       ),),),
                                     Text("(+1) 999 999 999", style: TextStyle(
                                       color: Colors.deepOrange,
                                       fontSize: 16,
                                     ),)
                                   ]
                                 ), Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                            Icons.add_location_rounded
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Center(
                                          child: Text(
                                            "Loading Point",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ), SizedBox(
                                          width: 120,
                                        ),
                                        FlatButton.icon(
                                          onPressed: () {},
                                          label: Text(""),
                                          icon: Container(
                                            height: 30,
                                            width: 10,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              //border: Border.all(color: Colors.grey),
                                              // color: Colors.redAccent[250],
                                            ),
                                            child: Icon(
                                              Icons.arrow_forward,
                                              //     color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                     Row(
                                      children: [
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Icon(
                                          Icons.adjust_sharp
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Center(
                                          child: Text(
                                            "Unloading Point",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 109,
                                        ),
                                        FlatButton.icon(
                                          onPressed: () {},
                                          label: Text(""),
                                          icon: Container(
                                            height: 30,
                                            width: 10,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              //border: Border.all(color: Colors.grey),
                                              // color: Colors.redAccent[250],
                                            ),
                                            child: Icon(
                                              Icons.arrow_forward,
                                              //     color: Colors.red,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                 Row(
                                  children: <Widget>[
                                    Expanded(
                                        child: Text(
                                          _currentMonth,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                          ),
                                        )),
                                  ],),]),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 12.0),
                                child: _calendarCarouselNoHeader,
                              ), //
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 50),
                          child: Text(
                            "Pick time",
                            style:
                            TextStyle(color: Colors.grey, fontSize: 18),
                          ),),
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
                        Divider(
                          thickness: 5,
                          color: Colors.grey,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.account_circle_sharp,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Work",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                width: 80,
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
