import 'package:flutter/material.dart';

import '../../utilities/app_main_color.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        backgroundColor: Colors.white,
        height: 56,
        destinations: [
          NavigationDestination(
              icon: Icon(
                Icons.grid_view,
                color: AppMainColor.textColor,
              ),
              label: "Feed"),
          NavigationDestination(
              icon: Icon(
                Icons.people_outline,
                color: AppMainColor.textColor,
              ),
              label: "My community"),
          NavigationDestination(
              icon: Icon(
                Icons.public,
                color: AppMainColor.textColor,
              ),
              label: "Explore"),
          NavigationDestination(
              icon: Icon(
                Icons.notifications,
                color: AppMainColor.textColor,
              ),
              label: "Notification"),
          NavigationDestination(
              icon: Icon(
                Icons.settings,
                color: AppMainColor.textColor,
              ),
              label: "Settings"),
        ]);
  }
}
