import 'package:api_room/screens/home.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Row(
        children: [
          NavigationRail(destinations: const [
            NavigationRailDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: Text('Home'),
            ),
            NavigationRailDestination(
                icon: Icon(Icons.auto_awesome_mosaic_outlined),
                selectedIcon: Icon(Icons.auto_awesome_mosaic),
                label: Text('Requests')),
            NavigationRailDestination(
              icon: Icon(Icons.settings_outlined),
              selectedIcon: Icon(Icons.settings),
              label: Text('Settings'),
            ),
          ], selectedIndex: 2),
          const VerticalDivider(),
          const Expanded(
              child: IndexedStack(
            index: 0,
            children: [Home()],
          ))
        ],
      )),
    );
  }
}
