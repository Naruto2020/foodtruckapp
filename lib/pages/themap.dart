// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:geolocator/geolocator.dart';
//import 'package:flutter_gmaps/directions_model.dart';
//import 'package:flutter_gmaps/directions_repository.dart';

const LatLng Source_Location = LatLng(48.86962697213314, 2.4640869207964764);
const LatLng Dest_Location = LatLng(48.868266346914446, 2.4633482593284466);

late LatLng currentPostion;

const double CAMERA_ZOOM = 16;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
// const double PIN_VISIBLE_POSITION = 20;
// const double PIN_INVISIBLE_POSITION = -220;

class TheMapPage extends StatefulWidget {
  const TheMapPage({Key? key}) : super(key: key);

  @override
  State<TheMapPage> createState() => _TheMapPageState();
}

class _TheMapPageState extends State<TheMapPage> {

  Completer<GoogleMapController>_controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  Set<Marker>_markers = Set<Marker>();

  late LatLng currentLocation;
  late LatLng destinationLocation;

  // initialisation of # states (locations & markers)
  @override
  void initState() {
    super.initState();

    // set initial locations
    setInitialLocation();

    // set current position
    //_getUserLocation();

    // set the marker icons 
    setSourceAndDestinationMarkerIcons();

  }

  // set markers icons positions 

  void setSourceAndDestinationMarkerIcons() async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(devicePixelRatio: 2.0),
      'assets/imgs/icons8-user.png'
    );

    destinationIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(devicePixelRatio: 2.0),
      'assets/imgs/icons8-truck.png'
    );
  }

  // set sources & destination locations 
  void setInitialLocation() {
    currentLocation = LatLng(
      Source_Location.latitude, 
      Source_Location.longitude
    );



    destinationLocation = LatLng(
      Dest_Location.latitude, 
      Dest_Location.longitude
    );
  }

  // get user location dynamicaly

  /*void _getUserLocation() async {
        var position = await Geolocator
            .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
            //.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    
        setState(() {
          currentPostion = LatLng(position.latitude, position.longitude);
        });
  }*/


  @override
  Widget build(BuildContext context) {

    CameraPosition initialCameraPosition = const CameraPosition(
      zoom: CAMERA_ZOOM,
      tilt: CAMERA_TILT,
      bearing: CAMERA_BEARING,
      target: Source_Location
    );



    return Scaffold(
      body: Container(
        child: GoogleMap(
          myLocationEnabled: true,
          compassEnabled: false,
          tiltGesturesEnabled: false,
          markers: _markers,
          mapType: MapType.normal,
          initialCameraPosition: initialCameraPosition,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);

            // enable markers on map 

            showPinsOnMap();
          },
        )
      ),
    );
  }

  void showPinsOnMap(){
    setState(() {

      _markers.add(Marker(
        markerId: MarkerId('sourcePin'),
        position: currentLocation,
        icon: sourceIcon,
      ));

      _markers.add(Marker(
        markerId: MarkerId('destinationPin'),
        position: destinationLocation,
        icon: destinationIcon,
      ));
      
    });
    
  }
}