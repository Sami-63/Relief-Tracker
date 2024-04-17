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
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: donations.length,
      itemBuilder: (context, index) {
        final donation = donations[index];
        return InkWell(
          onTap: () {
            RouteManager.of(context).goToDonationDetailsScreen(id: donation.id);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: const Offset(1, 1),
                  blurRadius: 4,
                ),
              ],
            ),
            height: 100,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              children: [
                Expanded(
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
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 16,
                      ),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                    Text(
                      getFormattedTime(donation.createdAt),
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 8),
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
