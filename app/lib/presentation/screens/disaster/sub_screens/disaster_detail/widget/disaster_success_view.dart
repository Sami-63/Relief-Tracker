import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:relief_tracker/domain/model/disaster/affected_location.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';

class DisasterSuccessView extends StatefulWidget {
  final Disaster disaster;

  const DisasterSuccessView({
    super.key,
    required this.disaster,
  });

  @override
  State<DisasterSuccessView> createState() => _DisasterSuccessViewState();
}

class _DisasterSuccessViewState extends State<DisasterSuccessView> {
  late GoogleMapController mapController;
  late LatLng initialLocation;
  List<LatLng> locations = [];

  @override
  void initState() {
    for (final affectedDistrict in widget.disaster.affectedDistricts) {
      if (affectedDistrict.district.latitude != null &&
          affectedDistrict.district.longitude != null) {
        locations.add(LatLng(
          affectedDistrict.district.latitude!,
          affectedDistrict.district.longitude!,
        ));
      }
    }

    for (final affectedUpazila in widget.disaster.affectedUpazilas) {
      if (affectedUpazila.upazila.latitude != null &&
          affectedUpazila.upazila.longitude != null) {
        locations.add(LatLng(
          affectedUpazila.upazila.latitude!,
          affectedUpazila.upazila.longitude!,
        ));
      }
    }

    for (final affectedUnion in widget.disaster.affectedUnions) {
      if (affectedUnion.union.latitude != null &&
          affectedUnion.union.longitude != null) {
        locations.add(LatLng(
          affectedUnion.union.latitude!,
          affectedUnion.union.longitude!,
        ));
      }
    }

    if (locations.isNotEmpty) {
      initialLocation = locations.first;
    } else {
      initialLocation = const LatLng(23.8103, 90.4125);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageSlider(images: widget.disaster.images),
            const SizedBox(height: 16),
            Text(
              widget.disaster.title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: 8),
            Text(
              widget.disaster.description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            AffectedDistrictView(
              affectedDistricts: widget.disaster.affectedDistricts,
            ),
            AffectedUpazilaView(
              affectedUpazilas: widget.disaster.affectedUpazilas,
            ),
            AffectedUnionView(
              affectedUnions: widget.disaster.affectedUnions,
            ),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}

class ImageSlider extends StatelessWidget {
  final List<String> images;

  const ImageSlider({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return Container(
        height: 300,
        color: Colors.grey.shade300,
      );
    }

    return Image.network(
      images.first,
      height: 300,
      fit: BoxFit.cover,
    );
  }
}

class AffectedDistrictView extends StatelessWidget {
  final List<AffectedDistrict> affectedDistricts;

  const AffectedDistrictView({
    super.key,
    required this.affectedDistricts,
  });

  @override
  Widget build(BuildContext context) {
    if (affectedDistricts.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(
          'Affected Districts',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: affectedDistricts.length,
          itemBuilder: (context, index) {
            final affectedDistrict = affectedDistricts[index];
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Text(affectedDistrict.district.name),
                  const Spacer(),
                  Text('${affectedDistrict.affectedPeople} People'),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(height: 8),
        ),
      ],
    );
  }
}

class AffectedUpazilaView extends StatelessWidget {
  final List<AffectedUpazila> affectedUpazilas;

  const AffectedUpazilaView({
    super.key,
    required this.affectedUpazilas,
  });

  @override
  Widget build(BuildContext context) {
    if (affectedUpazilas.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(
          'Affected Upazilas',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: affectedUpazilas.length,
          itemBuilder: (context, index) {
            final affectedUpazila = affectedUpazilas[index];
            return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Text(affectedUpazila.upazila.name),
                    const Spacer(),
                    Text('${affectedUpazila.affectedPeople} People'),
                  ],
                ));
          },
          separatorBuilder: (context, index) => const SizedBox(height: 8),
        ),
      ],
    );
  }
}

class AffectedUnionView extends StatelessWidget {
  final List<AffectedUnion> affectedUnions;

  const AffectedUnionView({
    super.key,
    required this.affectedUnions,
  });

  @override
  Widget build(BuildContext context) {
    if (affectedUnions.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(
          'Affected Unions',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: affectedUnions.length,
          itemBuilder: (context, index) {
            final affectedUnion = affectedUnions[index];
            return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Text(affectedUnion.union.name),
                    const Spacer(),
                    Text('${affectedUnion.affectedPeople} People'),
                  ],
                ));
          },
          separatorBuilder: (context, index) => const SizedBox(height: 8),
        ),
      ],
    );
  }
}

class OtherAffectedLocationView extends StatelessWidget {
  final List<OtherAffectedLocation> otherAffectedLocations;

  const OtherAffectedLocationView({
    super.key,
    required this.otherAffectedLocations,
  });

  @override
  Widget build(BuildContext context) {
    if (otherAffectedLocations.isEmpty) {
      return const SizedBox.shrink();
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(
          'Other Affected Locations',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: otherAffectedLocations.length,
          itemBuilder: (context, index) {
            final otherAffectedLocation = otherAffectedLocations[index];
            return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Text(otherAffectedLocation.location),
                    const Spacer(),
                    Text('${otherAffectedLocation.affectedPeople} People'),
                  ],
                ));
          },
          separatorBuilder: (context, index) => const SizedBox(height: 8),
        ),
      ],
    );
  }
}
