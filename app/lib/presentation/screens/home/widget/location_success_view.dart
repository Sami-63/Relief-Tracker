import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';

import '../../donation/sub_screen/donation_detail/widget/bottom_sheet_list.dart';

class CustomSomething {
  final LatLng latLng;
  final int? districtId;
  final int? upazilaId;
  final int? unionId;

  CustomSomething({
    required this.latLng,
    this.districtId,
    this.upazilaId,
    this.unionId,
  });
}

class LocationSuccessView extends StatefulWidget {
  final List<Donation> donations;

  const LocationSuccessView({
    super.key,
    required this.donations,
  });

  @override
  State<LocationSuccessView> createState() => _LocationSuccessViewState();
}

class _LocationSuccessViewState extends State<LocationSuccessView> {
  final List<CustomSomething> _customLocations = [];

  @override
  void initState() {
    super.initState();

    for (final data in widget.donations) {
      for (final district in data.donatedDistricts) {
        if (district.district.latitude != null &&
            district.district.longitude != null) {
          _customLocations.add(
            CustomSomething(
              latLng: LatLng(
                  district.district.latitude!, district.district.longitude!),
              districtId: district.district.id,
            ),
          );
        }
      }

      for (final upazila in data.donatedUpazilas) {
        if (upazila.upazila.latitude != null &&
            upazila.upazila.longitude != null) {
          _customLocations.add(
            CustomSomething(
              latLng:
                  LatLng(upazila.upazila.latitude!, upazila.upazila.longitude!),
              upazilaId: upazila.upazila.id,
            ),
          );
        }
      }

      for (final union in data.donatedUnions) {
        if (union.union.latitude != null && union.union.longitude != null) {
          _customLocations.add(
            CustomSomething(
              latLng: LatLng(union.union.latitude!, union.union.longitude!),
              unionId: union.union.id,
            ),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      height: 200,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      child: GoogleMap(
        gestureRecognizers: {
          Factory<OneSequenceGestureRecognizer>(() => EagerGestureRecognizer())
        },
        initialCameraPosition: CameraPosition(
          target: _customLocations.isEmpty
              ? const LatLng(24.905045458950635, 91.86038484471987)
              : _customLocations.first.latLng,
          zoom: 8,
        ),
        markers: _customLocations
            .map(
              (location) => Marker(
                markerId: MarkerId(location.latLng.toString()),
                position: location.latLng,
                onTap: () {
                  showBottomSheet(
                    context: context,
                    backgroundColor: Colors.white,
                    elevation: 10,
                    builder: (context) {
                      return BottomSheetLocationList(
                        districtId: location.districtId,
                        upazilaId: location.upazilaId,
                        unionId: location.unionId,
                      );
                    },
                  );
                },
              ),
            )
            .toSet(),
      ),
    );
  }
}
