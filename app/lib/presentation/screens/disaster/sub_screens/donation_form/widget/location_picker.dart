import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPicker extends StatefulWidget {
  const LocationPicker({super.key});

  @override
  State<LocationPicker> createState() => _LocationPickerState();
}

class _LocationPickerState extends State<LocationPicker> {
  LatLng? _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(23.8103, 90.4125),
                zoom: 11,
              ),
              onTap: (LatLng latLng) {
                setState(() {
                  _selectedLocation = latLng;
                });
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_selectedLocation != null) {
                Navigator.pop(context, _selectedLocation);
              } else {
                // Show a message indicating that no location is selected
              }
            },
            child: const Text('Select Location'),
          ),
        ],
      ),
    );
  }
}
