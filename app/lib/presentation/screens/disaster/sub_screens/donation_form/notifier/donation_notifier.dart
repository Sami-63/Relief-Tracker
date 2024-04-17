import 'package:flutter/cupertino.dart';
import 'package:relief_tracker/domain/model/accounts/user.dart';
import 'package:relief_tracker/domain/model/donation/donated_location.dart';
import 'package:relief_tracker/domain/model/donation/donor_request.dart';

class DonationNotifier extends ChangeNotifier {
  // ================== Donor Request ==================
  final List<DonorRequestModel> _donors = [];
  User? _selectedDonor;

  List<DonorRequestModel> get donors => _donors;

  void setSelectedDonor(User? user) {
    _selectedDonor = user;
    notifyListeners();
  }

  User? get selectedDonor => _selectedDonor;

  void addDonor(String username) {
    _donors.add(DonorRequestModel(username: username));
    notifyListeners();
  }

  void removeDonor(DonorRequestModel donor) {
    _donors.remove(donor);
    notifyListeners();
  }

  // ================== Donated District ==================

  final List<DonatedDistrict> _donatedDistricts = [];

  List<DonatedDistrict> get donatedDistricts => _donatedDistricts;

  void addDonatedDistrict(DonatedDistrict district) {
    _donatedDistricts.add(district);
    notifyListeners();
  }

  void removeDonatedDistrict(DonatedDistrict district) {
    _donatedDistricts.remove(district);
    notifyListeners();
  }

  // ================== Donated Upazila ==================

  final List<DonatedUpazila> _donatedUpazilas = [];

  List<DonatedUpazila> get donatedUpazilas => _donatedUpazilas;

  void addDonatedUpazila(DonatedUpazila upazila) {
    _donatedUpazilas.add(upazila);
    notifyListeners();
  }

  void removeDonatedUpazila(DonatedUpazila upazila) {
    _donatedUpazilas.remove(upazila);
    notifyListeners();
  }

  // ================== Donated Union ==================

  final List<DonatedUnion> _donatedUnions = [];

  List<DonatedUnion> get donatedUnions => _donatedUnions;

  void addDonatedUnion(DonatedUnion union) {
    _donatedUnions.add(union);
    notifyListeners();
  }

  void removeDonatedUnion(DonatedUnion union) {
    _donatedUnions.remove(union);
    notifyListeners();
  }
}
