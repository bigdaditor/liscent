import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NearbyScreen extends StatefulWidget {
  const NearbyScreen({Key? key}) : super(key: key);

  @override
  NearbyScreenState createState() => NearbyScreenState();
}

class NearbyScreenState extends State<NearbyScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(37.4537251, 126.7960716);
  List<Marker> _markers = [];
  late BitmapDescriptor customIcon ;

  static Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }

  @override
  void initState() {
    getBytesFromAsset('assets/icon_map.png', 100).then((onValue) {
      customIcon = BitmapDescriptor.fromBytes(onValue);
      _markers.add(
          Marker(
              markerId: MarkerId("1"),
              draggable: true,
              onTap: () => print("Marker!"),
              position: LatLng(37.4537251, 126.7960716),
              icon: customIcon
          )
      );

    });
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: AppBar(
              title: Image.asset('assets/logo.png', width: 130),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 0,
              actions: [
                IconButton(
                  onPressed: null,
                  icon: Image.asset('assets/icon_search.png'),
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                )
              ],
            ),
          ),
          body: Stack(
            children: [
              GoogleMap(
                onMapCreated: _onMapCreated,
                markers: Set.from(_markers),
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
              Positioned.fill(
                bottom: 35,
                  child: Align(alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 145,
                      padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/poster03.jpg',
                              width: 100),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('황도유 : Innocentblossom',style: TextStyle(fontSize: 14,
                                  color: Color(0xff41424A))),
                              SizedBox(height: 10),
                              Text('서정아트 강남', style: TextStyle(fontSize: 12,
                                  color: Color(0xff41424A).withOpacity(0.7))),
                              SizedBox(height: 10),
                              Text('2023. 03. 27 ~ 2023. 04. 26 ',style: TextStyle(fontSize: 12,
                                  color: Color(0xff41424A).withOpacity(0.7)))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),) )
            ],
          )),
    );
  }
}
