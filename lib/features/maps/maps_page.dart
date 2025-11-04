import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsPage extends StatelessWidget {
  const MapsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const LatLng position = LatLng(-7.9666, 112.6326); // Malang
    return Scaffold(
      appBar: AppBar(title: const Text('Lokasi Tukang')),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(target: position, zoom: 14),
        markers: {
          const Marker(
            markerId: MarkerId('tukang1'),
            position: position,
            infoWindow: InfoWindow(title: 'Tukang Dekatmu'),
          ),
        },
      ),
    );
  }
}
