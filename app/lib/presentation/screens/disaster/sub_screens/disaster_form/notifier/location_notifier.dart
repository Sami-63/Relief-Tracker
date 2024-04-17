import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:relief_tracker/domain/model/disaster/affected_location.dart';
import 'package:relief_tracker/domain/model/location/district.dart';
import 'package:relief_tracker/domain/model/location/union.dart';
import 'package:relief_tracker/domain/model/location/upazila.dart';

final AutoDisposeChangeNotifierProvider<LocationNotifier>
    locationNotifierProvider = ChangeNotifierProvider.autoDispose(
  (ref) => LocationNotifier(),
);

class LocationNotifier extends ChangeNotifier {
  District? _selectedDistrict;
  Upazila? _selectedUpazila;
  Union? _selectedUnion;

  int _districtAffectedPeople = 0;
  int _upazilaAffectedPeople = 0;
  int _unionAffectedPeople = 0;

  void setAffectedDistrict({District? district, int? affectedPeople}) {
    if (district != null) {
      _selectedDistrict = district;
    }

    if (affectedPeople != null) {
      _districtAffectedPeople = affectedPeople;
    }

    notifyListeners();
  }

  void setAffectedUpazila({Upazila? upazila, int? affectedPeople}) {
    if (upazila != null) {
      _selectedUpazila = upazila;
    }

    if (affectedPeople != null) {
      _upazilaAffectedPeople = affectedPeople;
    }

    notifyListeners();
  }

  void setAffectedUnion({Union? union, int? affectedPeople}) {
    if (union != null) {
      _selectedUnion = union;
    }

    if (affectedPeople != null) {
      _unionAffectedPeople = affectedPeople;
    }

    notifyListeners();
  }

  final List<AffectedDistrict> _affectedDistricts = [];
  final List<AffectedUpazila> _affectedUpazilas = [];
  final List<AffectedUnion> _affectedUnions = [];
  final List<OtherAffectedLocation> _otherAffectedLocations = [];

  List<AffectedDistrict> get affectedDistricts => _affectedDistricts;

  List<AffectedUpazila> get affectedUpazilas => _affectedUpazilas;

  List<AffectedUnion> get affectedUnions => _affectedUnions;

  List<OtherAffectedLocation> get otherAffectedLocations =>
      _otherAffectedLocations;

  void addAffectedDistrict() {
    if (_selectedDistrict != null) {
      _affectedDistricts.add(
        AffectedDistrict(
          district: _selectedDistrict!,
          affectedPeople: _districtAffectedPeople,
        ),
      );
    }
    notifyListeners();
  }

  void addAffectedUpazila() {
    if (_selectedUpazila != null) {
      _affectedUpazilas.add(
        AffectedUpazila(
          upazila: _selectedUpazila!,
          affectedPeople: _upazilaAffectedPeople,
        ),
      );
    }
    notifyListeners();
  }

  void addAffectedUnion() {
    if (_selectedUnion != null) {
      _affectedUnions.add(
        AffectedUnion(
          union: _selectedUnion!,
          affectedPeople: _unionAffectedPeople,
        ),
      );
    }
    notifyListeners();
  }

  void addOtherAffectedLocation(
      {required String location, required int affectedPeople}) {
    _otherAffectedLocations.add(
      OtherAffectedLocation(
        location: location,
        affectedPeople: affectedPeople,
      ),
    );
    notifyListeners();
  }

  void removeAffectedDistrict(AffectedDistrict district) {
    _affectedDistricts.remove(district);
    notifyListeners();
  }

  void removeAffectedUpazila(AffectedUpazila upazila) {
    _affectedUpazilas.remove(upazila);
    notifyListeners();
  }

  void removeAffectedUnion(AffectedUnion union) {
    _affectedUnions.remove(union);
    notifyListeners();
  }

  void removeOtherAffectedLocation(OtherAffectedLocation location) {
    _otherAffectedLocations.remove(location);
    notifyListeners();
  }
}
