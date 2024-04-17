class DonatedItemRequestModel {
  final String name;
  final double quantity;
  final String unit;
  final String description;

  DonatedItemRequestModel({
    required this.name,
    required this.quantity,
    required this.unit,
    required this.description,
  });
}

class DonatedDistrictRequestModel {
  final int district;
  final int donatedPeople;
  final List<DonatedItemRequestModel> donatedItems;

  DonatedDistrictRequestModel({
    required this.district,
    required this.donatedPeople,
    required this.donatedItems,
  });
}

class DonatedUpazilaRequestModel {
  final int upazila;
  final int donatedPeople;
  final List<DonatedItemRequestModel> donatedItems;

  DonatedUpazilaRequestModel({
    required this.upazila,
    required this.donatedPeople,
    required this.donatedItems,
  });
}

class DonatedUnionRequestModel {
  final int union;
  final int donatedPeople;
  final List<DonatedItemRequestModel> donatedItems;

  DonatedUnionRequestModel({
    required this.union,
    required this.donatedPeople,
    required this.donatedItems,
  });
}

class OtherDonatedLocationRequestModel {
  final String location;
  final int donatedPeople;
  final List<DonatedItemRequestModel> donatedItems;

  OtherDonatedLocationRequestModel({
    required this.location,
    required this.donatedPeople,
    required this.donatedItems,
  });
}
