import 'district.dart';

class Division {
  final int id;
  final String name;
  final String banglaName;

  Division({
    required this.id,
    required this.name,
    required this.banglaName,
  });
}

class DivisionDetails {
  final int id;
  final String name;
  final String banglaName;
  final List<District> districts;

  DivisionDetails({
    required this.id,
    required this.name,
    required this.banglaName,
    required this.districts,
  });
}