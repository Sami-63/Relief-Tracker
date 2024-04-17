import 'package:flutter/material.dart';
import 'package:relief_tracker/domain/model/donation/donation.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';

class DonationSuccessView extends StatelessWidget {
  final List<Donation> donations;

  const DonationSuccessView({
    super.key,
    required this.donations,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: donations.length,
        itemBuilder: (context, index) {
          final donation = donations[index];
          return InkWell(
            onTap: () {
              RouteManager.of(context).goToDonationDetailsScreen(
                id: donation.id,
              );
            },
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.0),
                        topRight: Radius.circular(8.0),
                      ),
                    ),
                    child: donation.images.isNotEmpty
                        ? Image.network(
                            donation.images.first,
                            fit: BoxFit.cover,
                          )
                        : const Icon(Icons.image_not_supported),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 4.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          donation.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          getFormattedDescription(donation),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          getPeopleCount(donation),
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 8);
        },
      ),
    );
  }

  String getFormattedDescription(Donation donation) {
    String headLine = "Donation in ";

    for (var district in donation.donatedDistricts) {
      headLine += "${district.district.name}, ";
    }

    for (var upazila in donation.donatedUpazilas) {
      headLine += "${upazila.upazila.name}, ${upazila.upazila.district.name}, ";
    }

    for (var union in donation.donatedUnions) {
      headLine +=
          "${union.union.name}, ${union.union.upazila.name}, ${union.union.upazila.district.name}, ";
    }

    return headLine;
  }

  String getPeopleCount(Donation donation) {
    int peopleCount = 0;
    for (var district in donation.donatedDistricts) {
      peopleCount += district.donatedPeople;
    }

    for (var upazila in donation.donatedUpazilas) {
      peopleCount += upazila.donatedPeople;
    }

    for (var union in donation.donatedUnions) {
      peopleCount += union.donatedPeople;
    }

    return "Donated to around $peopleCount people";
  }

  String getFormattedTime(String createdAt) {
    final dateTime = DateTime.parse(createdAt);
    final formattedTime = "${dateTime.day}/${dateTime.month}/${dateTime.year}";
    return formattedTime;
  }
}
