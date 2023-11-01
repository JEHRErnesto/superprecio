import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late GoogleMapController _googleMapController;
  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    _addMarkers();
  }

  void _getCurrentLocation() async {
    try {
      Position position = await determinePosition();
      LatLng initialPosition = LatLng(position.latitude, position.longitude);
      _updateCameraPosition(initialPosition);
    } catch (e) {
      print('Error obtaining current location: $e');
    }
  }

  Future<Position> determinePosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Permiso');
      }
    }
    return await Geolocator.getCurrentPosition();
  }

  void _addMarkers() {
    // Agregar un marcador en una ubicación específica con un título
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_1'),
        position: LatLng(13.504599, -88.874398), // Ubicación específica 1
        icon: BitmapDescriptor.defaultMarker,
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Título encima de la imagen
                    Text(
                      'Gasolinera Texaco',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    // Imagen
                    Center(
                      child: Image.asset(
                        'img/gasolineras/Texaco.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    SizedBox(height: 10,),
                    // Título "Gasolina"
                    Text(
                      'Gasolina',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    // Precios de gasolina
                    Text('Regular: \$50'),
                    Text('Super: \$100'),
                    SizedBox(height: 10,),
                    // Título "Diesel"
                    Text(
                      'Diesel: \$50',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    // Botón "Dar ubicación"
                    ElevatedButton(
                      onPressed: () {
                        // Agrega aquí la lógica para el botón "Ir"
                      },
                      child: Text('Dar ubicación'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );

    // Agregar un segundo marcador en otra ubicación específica con un título diferente
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_2'),
        position: LatLng(13.497174, -88.877471), // Ubicación específica 2
        icon: BitmapDescriptor.defaultMarker,
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Título encima de la imagen
                    Text(
                      'Gasolinera UNO',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    
                    // Imagen
                    Center(
                      child: Image.asset(
                        'img/gasolineras/UNO.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    
                    // Título "Gasolina"
                    Text(
                      'Gasolina',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    // Precios de gasolina
                    Text('Regular: \$50'),
                    Text('Super: \$100'),
                    SizedBox(height: 10,),
                    // Título "Diesel"
                    Text(
                      'Diesel: \$50',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    // Botón "Dar ubicación"
                    ElevatedButton(
                      onPressed: () {
                        // Agrega aquí la lógica para el botón "Ir"
                      },
                      child: Text('Dar ubicación'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_3'),
        position: LatLng(13.504898, -88.874929), // Ubicación específica 2
        icon: BitmapDescriptor.defaultMarker,
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Título encima de la imagen
                    Text(
                      'Gasolinera PUMA',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    
                    // Imagen
                    Center(
                      child: Image.asset(
                        'img/gasolineras/puma.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    
                    // Título "Gasolina"
                    Text(
                      'Gasolina',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    // Precios de gasolina
                    Text('Regular: \$50'),
                    Text('Super: \$100'),
                    SizedBox(height: 10,),
                    // Título "Diesel"
                    Text(
                      'Diesel: \$50',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    // Botón "Dar ubicación"
                    ElevatedButton(
                      onPressed: () {
                        // Agrega aquí la lógica para el botón "Ir"
                      },
                      child: Text('Dar ubicación'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_4'),
        position: LatLng(13.50382949690554, -88.87122296874753), // Ubicación específica 2
        icon: BitmapDescriptor.defaultMarker,
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Título encima de la imagen
                    Text(
                      'Gasolinera UNO',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    
                    // Imagen
                    Center(
                      child: Image.asset(
                        'img/gasolineras/UNO.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    
                    // Título "Gasolina"
                    Text(
                      'Gasolina',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    // Precios de gasolina
                    Text('Regular: \$50'),
                    Text('Super: \$100'),
                    SizedBox(height: 10,),
                    // Título "Diesel"
                    Text(
                      'Diesel: \$50',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    // Botón "Dar ubicación"
                    ElevatedButton(
                      onPressed: () {
                        // Agrega aquí la lógica para el botón "Ir"
                      },
                      child: Text('Dar ubicación'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
    _markers.add(
      Marker(
        markerId: MarkerId('marker_id_5'),
        position: LatLng(13.489563704054635, -88.85593957054992), // Ubicación específica 2
        icon: BitmapDescriptor.defaultMarker,
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Título encima de la imagen
                    Text(
                      'Gasolinera Texaco',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    
                    // Imagen
                    Center(
                      child: Image.asset(
                        'img/gasolineras/Texaco.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                    
                    // Título "Gasolina"
                    Text(
                      'Gasolina',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    // Precios de gasolina
                    Text('Regular: \$50'),
                    Text('Super: \$100'),
                    SizedBox(height: 10,),
                    // Título "Diesel"
                    Text(
                      'Diesel: \$50',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10,),
                    // Botón "Dar ubicación"
                    ElevatedButton(
                      onPressed: () {
                        // Agrega aquí la lógica para el botón "Ir"
                      },
                      child: Text('Dar ubicación'),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _updateCameraPosition(LatLng target) {
    setState(() {
      _loadCustomIcon().then((BitmapDescriptor customIcon) {
        _markers.add(
          Marker(
            markerId: MarkerId('current_location'),
            position: target,
            icon: customIcon,
          ),
        );

        _googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: target,
              zoom: 15.0, // Ajusta el nivel de zoom según tus necesidades
            ),
          ),
        );
      });
    });
  }

  Future<BitmapDescriptor> _loadCustomIcon() async {
    final ByteData byteData = await rootBundle.load('img/pin/pin.png');
    final Uint8List uint8List = byteData.buffer.asUint8List();
    return BitmapDescriptor.fromBytes(uint8List);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(0, 0), // Valores iniciales que se actualizarán
          zoom: 5.5,
        ),
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        markers: _markers,
        onMapCreated: (controller) {
          _googleMapController = controller;
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
        onPressed: () {
          _getCurrentLocation(); // Actualiza la ubicación actual al presionar el botón
        },
        child: const Icon(Icons.location_searching_outlined),
      ),
    );
  }
}
