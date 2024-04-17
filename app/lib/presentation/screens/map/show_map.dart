import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ShowMap extends StatelessWidget {
  final LatLng initialLocation;
  final List<LatLng> locations;

  const ShowMap({
    super.key,
    required this.initialLocation,
    required this.locations,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(width: 1),
      ),
      padding: const EdgeInsets.all(8),
      child: GoogleMap(
        gestureRecognizers: {
          Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer())
        },
        initialCameraPosition: CameraPosition(
          target: initialLocation,
          zoom: 9,
        ),
        markers: locations
            .map(
              (location) => Marker(
                markerId: MarkerId(location.toString()),
                position: location,
              ),
            )
            .toSet(),
      ),
    );
  }
}
