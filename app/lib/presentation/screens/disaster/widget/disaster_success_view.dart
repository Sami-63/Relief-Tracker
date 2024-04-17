import 'package:flutter/material.dart';
import 'package:relief_tracker/domain/model/disaster/disaster.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';

class DisasterSuccessView extends StatelessWidget {
  final List<Disaster> disasters;

  const DisasterSuccessView({
    super.key,
    required this.disasters,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: disasters.length,
      itemBuilder: (context, index) {
        final disaster = disasters[index];
        return InkWell(
          onTap: () {
            RouteManager.of(context).goToDisasterDetailsScreen(id: disaster.id);
          },
          child: Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                  child: disaster.images.isNotEmpty
                      ? Image.network(
                          disaster.images.first,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )
                      : Container(
                          width: 100,
                          height: 100,
                          color: Colors.grey.shade300,
                        ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        disaster.title,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        disaster.description,
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _getAffectedPeopleText(disaster),
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _getCalculatedTimeText(disaster),
                            style: Theme.of(context).textTheme.labelSmall,
                          ),
                        ],
                      ), // I want this row to be at the bottom of the card
                    ],
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
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
