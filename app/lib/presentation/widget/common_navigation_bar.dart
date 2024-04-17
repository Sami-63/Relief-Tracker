import 'package:flutter/material.dart';
import 'package:relief_tracker/presentation/route_manager/route_manager.dart';

class CommonNavigationBar extends StatefulWidget {
  final String tab;

  const CommonNavigationBar({
    Key? key,
    required this.tab,
  }) : super(key: key);

  @override
  State<CommonNavigationBar> createState() => _CommonNavigationBarState();
}

class _CommonNavigationBarState extends State<CommonNavigationBar> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    if (widget.tab == 'Home') {
      _selectedIndex = 0;
    } else if (widget.tab == 'Disasters') {
      _selectedIndex = 1;
    } else if (widget.tab == 'Donations') {
      _selectedIndex = 2;
    } else if (widget.tab == 'Settings') {
      _selectedIndex = 3;
    }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 0) {
      // Navigate to Home
      RouteManager.of(context).goToHomeScreen();
    } else if (index == 1) {
      // Navigate to Disasters
      RouteManager.of(context).goToDisastersScreen();
    } else if (index == 2) {
      // Navigate to Donations
      RouteManager.of(context).goToDonationsScreen();
    } else if (index == 3) {
      // Navigate to Settings
      RouteManager.of(context).goToSettingsScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.warning),
          label: 'Disasters',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.monetization_on),
          label: 'Donations',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      type: BottomNavigationBarType.fixed,
      // To make labels visible for all items
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true, // To always show labels
    );
  }
}
