import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  GoogleMapController? _controller;
  final CameraPosition _initialCameraPosition = CameraPosition(
    target: LatLng(4.324815, -74.363466),
    zoom: 18,
  );

  final Set<Marker> _markers = {
    Marker(
      markerId: MarkerId("Pepito"),
      position: LatLng(4.324815, -74.363466),
      infoWindow: InfoWindow(
        title: "Mi Restaurante",
        snippet: "Este es mi restaurante",
      ),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('What is this shit?')),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller) {
          _controller = controller;
        },
        mapType: MapType.normal,
        markers: _markers,
        onTap: (latLng) => addMarker(latLng),
      ),
    );
  }

  void addMarker(LatLng latLng) async {
    TextEditingController _textController = TextEditingController();

    String? title = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Agregar un titulo"),
          content: TextField(
            controller: _textController,
            decoration: InputDecoration(hintText: "Restaurante..."),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(null),
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(_textController.text),
              child: Text("Guardar"),
            ),
          ],
        );
      },
    );
    if (title != null && title.isNotEmpty) {
      setState(() {
        _markers.add(
          Marker(
            markerId: MarkerId(latLng.toString()),
            position: latLng,
            infoWindow: InfoWindow(title: title),
          ),
        );
      });
    }
  }
}
