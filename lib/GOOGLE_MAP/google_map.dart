import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../Screens/HouseShifting/NewCard.dart';
import '../Screens/HouseShifting/Service_de_menege.dart';

class GoogleMapPage extends StatefulWidget {
  late double startLatitude;
  late double startLongitude;
  late double destinationLatitude;
  late double destinationLongitude;
  @override
  _GoogleMapPageState createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  List<Marker> allMarkers = [];

  late GoogleMapController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allMarkers.add(Marker(
        markerId: MarkerId('myMarker'),
        draggable: true,
        onTap: () {
          print('Marker Tapped');
        },
        // position: LatLng(40.7128, -74.0060)
        position: LatLng(40.7128, -74.0060)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maps'),
      ),
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: LatLng(40.7128, -74.0060), zoom: 12.0),
            markers: Set.from(allMarkers),
            onMapCreated: mapCreated,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: InkWell(
            onTap: movetoBoston,
            child: Container(
              height: 50.0,
              width: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.deepOrange),
                color: Color.fromRGBO(253, 107, 34, 0.8),
              ),
              child: FlatButton.icon(
                onPressed: () {
                  bottomSheet(context);
                },
                label: Center(
                  child: Text(
                    "Continuer",
                    style: TextStyle(color: Colors.white, fontSize: 25),
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
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: movetoNewYork,
            child: Container(
              height: 40.0,
              width: 40.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0), color: Colors.red),
              child: Icon(Icons.backspace, color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }

  void mapCreated(controller) {
    setState(() {
      _controller = controller;
    });
  }

  movetoBoston() {
    _controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(
          target: LatLng(42.3601, -71.0589),
          zoom: 14.0,
          bearing: 45.0,
          tilt: 45.0),
    ));
  }

  movetoNewYork() {
    _controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: LatLng(40.7128, -74.0060), zoom: 12.0),
    ));
  }

  bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(70.0),
          ),
        ),
        builder: (BuildContext c) {
          return Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 80, right: 15, top: 10),
                child: Row(children: [
                  Text(
                    "Mes cartes ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  RaisedButton.icon(
                    color: Colors.grey[200],
                    onPressed: () {},
                    label: Text(
                      "Ajouter",
                      style: TextStyle(
                        color: Color.fromRGBO(253, 107, 34, 0.8),
                        fontSize: 12,
                      ),
                    ),
                    icon: Icon(
                      Icons.add,
                      color: Colors.deepOrange[400],
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 30,
              ),
              Image.asset(
                "images/visa.JPG",
                height: 150,
                width: 280,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Color.fromRGBO(253, 107, 34, 0.8),
                  height: 50,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  child: RaisedButton(
                    color: Color.fromRGBO(253, 107, 34, 0.8),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewCard()));
                    },
                    child: Center(
                      child: Text(
                        "Confirmer(\$56)",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  color: Colors.grey,
                  height: 50,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: RaisedButton(
                    color: Colors.grey,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Service_de_menage()),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Annuler",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )),
            ],
          ));
        });
  }

  _bottomSheet(context) {
    showModalBottomSheet(
        context: context,
        shape: const RoundedRectangleBorder(
          // <-- SEE HERE
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(70.0),
          ),
        ),
        builder: (BuildContext c) {
          return Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 100, right: 15, top: 10),
                child: Row(children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Mes cartes ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      color: Colors.grey[200],
                      child: TextButton.icon(
                        onPressed: () {},
                        label: Text(
                          "Ajouter",
                          style: TextStyle(
                            color: Color.fromRGBO(253, 107, 34, 0.8),
                            fontSize: 12,
                          ),
                        ),
                        icon: Icon(
                          Icons.add,
                          color: Colors.grey,
                        ),
                      )),
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey,
              ),
              Image.asset(
                "images/g1.JPG",
                height: 140,
                width: 170,
              ),
              Center(
                child: Text(
                  "Ajoutez votre carte",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      "II semble que vous nayez pas ajoute de carte de credit ou de debit.  Ajouter une     carte pour un acces plus rapide",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                  color: Colors.grey,
                  height: 50,
                  width: 290,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: TextButton(
                    // color: Color.fromRGBO(253, 107, 34, 0.8),
                    onPressed: () {
                      bottomSheet(context);
                    },
                    child: Center(
                      child: Text(
                        "Retour",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )),
            ],
          ));
        });
  }
}
