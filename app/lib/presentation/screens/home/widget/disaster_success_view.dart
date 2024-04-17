import 'package:flutter/material.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';

class DisasterSuccessView extends StatelessWidget {
  final List<Disaster> disasters;
  final double width;

  const DisasterSuccessView({
    super.key,
    required this.disasters,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 300,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: disasters.length,
        itemBuilder: (context, index) {
          final disaster = disasters[index];
          return InkWell(
            onTap: () {
              RouteManager.of(context)
                  .goToDisasterDetailsScreen(id: disaster.id);
            },
            child: Container(
              width: 250,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    disaster.images.isNotEmpty
                        ? Image.network(
                            disaster.images.first,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 150,
                          )
                        : Container(
                            color: Colors.grey,
                            width: double.infinity,
                            height: 150,
                          ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            disaster.title,
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            disaster.description,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    // const SizedBox(height: 8.0),
                    const Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _getAffectedPeopleText(disaster),
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            _getCalculatedTimeText(disaster),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6.0),
                  ],
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 16.0),
      ),
    );
  }

  String _getAffectedPeopleText(Disaster disaster) {
    int affectedPeople = 0;
    for (final district in disaster.affectedDistricts) {
      affectedPeople += district.affectedPeople;
    }
    for (final upazila in disaster.affectedUpazilas) {
      affectedPeople += upazila.affectedPeople;
    }
    for (final union in disaster.affectedUnions) {
      affectedPeople += union.affectedPeople;
    }

    return '$affectedPeople affected';
  }

  String _getCalculatedTimeText(Disaster disaster) {
    final startTime = DateTime.parse(disaster.startTime);
    final endTime =
        disaster.endTime != null ? DateTime.parse(disaster.endTime!) : null;
    final now = DateTime.now();
    if (endTime != null) {
      final difference = endTime.difference(now);
      if (difference.inDays > 0) {
        return 'Ended ${difference.inDays} days ago';
      } else if (difference.inHours > 0) {
        return 'Ended ${difference.inHours} hours ago';
      } else if (difference.inMinutes > 0) {
        return 'Ended ${difference.inMinutes} minutes ago';
      } else {
        return 'Ended just now';
      }
    } else {
      final difference = now.difference(startTime);
      if (difference.inDays > 0) {
        return 'Started ${difference.inDays} days ago';
      } else if (difference.inHours > 0) {
        return 'Started ${difference.inHours} hours ago';
      } else if (difference.inMinutes > 0) {
        return 'Started ${difference.inMinutes} minutes ago';
      } else {
        return 'Started just now';
      }
    }
  }
}
