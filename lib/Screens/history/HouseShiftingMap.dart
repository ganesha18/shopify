import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../addASocialAccount.dart';
import '../home.dart';

class HouseShiftingMap extends StatefulWidget {
  const HouseShiftingMap({Key? key}) : super(key: key);

  @override
  _HouseShiftingMapState createState() => _HouseShiftingMapState();
}

class _HouseShiftingMapState extends State<HouseShiftingMap> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(37.773972, -122.431297),
    zoom: 11.5,
  );

  late GoogleMapController _googleMapController;

  @override
  Widget build(BuildContext context) {
    var _info;
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            //begin: Alignment.topCenter,
            colors: [
              Colors.white,
            ]),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: <Widget>[
              Container(
                height: 90,
                width: 90,
                child: IconButton(
                  // color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  icon: Icon(
                    Icons.border_all_rounded,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Center(
                  child: Text(
                    "Selectionner la destination",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 14,
                    ),
                  ),
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
                          builder: (context) => AddSocialAccount()),
                    );
                  },
                  icon: Icon(
                    Icons.doorbell_sharp,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ],
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
              child: Column(children: [
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Container(
                    height: 190,
                    width: 190,
                    child: GoogleMap(
                      initialCameraPosition: _initialCameraPosition,
                      myLocationEnabled: false,
                      zoomControlsEnabled: false,
                      onMapCreated: (controller) =>
                          _googleMapController = controller,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    ));
  }
}
