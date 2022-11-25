//list of markers 
// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import '../widgets/trucklists.dart';
import '../widgets/categorybottombar.dart';
import '../pages/categorylistpage.dart';



class TheMapPage extends StatefulWidget {
  const TheMapPage({Key? key}) : super(key: key);

  @override
  State<TheMapPage> createState() => _TheMapPageState();
}

class _TheMapPageState extends State<TheMapPage> {

  Completer<GoogleMapController>_controller = Completer();

  late GoogleMapController mapController; //contrller for Google map
  final Set<Marker>_markers = Set<Marker>(); //markers for google map
  static const LatLng showLocation = LatLng(48.86962697213314, 2.4640869207964764);
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
   //location to show in map
   

  // initialisation of # states (locations & markers)
  @override
  void initState() {
    super.initState();

    // set initial locations
    //setInitialLocation();

    // set current position
    //_getUserLocation();

    // set the marker icons 
    setSourceAndDestinationMarkerIcons();

  }

  void setSourceAndDestinationMarkerIcons() async {
    
    sourceIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(devicePixelRatio: 2.0),
      'assets/imgs/icons8-user.png'
    );

    destinationIcon = await BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(devicePixelRatio: 2.0),
      'assets/imgs/icons8-truck.png'
      //'assets/imgs/icons8-user.png'
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: <Widget>[
          Container(
            child: GoogleMap(
              zoomGesturesEnabled: true, //enable Zoom in, out on map
              initialCameraPosition: const CameraPosition(          //innital position in map
                target: showLocation, //initial position
                zoom: 15.0, //initial zoom level
              ),
              markers: _markers, //markers to show on map
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) { //method called when map is created
                
                _controller.complete(controller);

                getmarkers();
                
              },

            ),

          ),
          
          TruckLists(),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,             
            child: CategoryBottomBar(),
          )
          

        ]),
        
      ),
      // bottomSheet:  const SizedBox(
      //   height: 80, 
      //   child: TruckLists()
      // ),
    );
  }

  Set<Marker> getmarkers() { //markers to place on map
    setState(() {
      _markers.add(Marker( //add first marker
        markerId: MarkerId('sourcePin'),
        position: showLocation, //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'user ',
          snippet: 'My Custom Subtitle',
        ),
        icon: sourceIcon, //Icon for Marker
      ));

      _markers.add(Marker( //add second marker
        markerId: MarkerId('destinationPin1'),
        position: LatLng(48.865766346914446, 2.4633482593284466), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'truck 2 ',
          snippet: 'My Custom Subtitle',
        ),
        icon: destinationIcon, //Icon for Marker
      ));

      _markers.add(Marker( //add third marker
        markerId: MarkerId('destinationPin2'),
        position: LatLng(48.868566346914448, 2.4633482593284468), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'truck 3 ',
          snippet: 'My Custom Subtitle',
        ),
        icon: destinationIcon, //Icon for Marker
      ));

      _markers.add(Marker( //add third marker
        markerId: MarkerId('destinationPin3'),
        position: LatLng(48.86752697213314, 2.4640869207964764), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'truck 4 ',
          snippet: 'My Custom Subtitle',
        ),
        icon: destinationIcon, //Icon for Marker
      ));

      _markers.add(Marker( //add third marker
        markerId: MarkerId('destinationPin4'),
        position: LatLng(48.86902697213314, 2.4675869207964768), //position of marker
        infoWindow: InfoWindow( //popup info 
          title: 'truck 5 ',
          snippet: 'My Custom Subtitle',
        ),
        icon: destinationIcon, //Icon for Marker
      ));

       //add more markers here 
    });

    return _markers;
  }
}


// ignore: use_function_type_syntax_for_parameters


