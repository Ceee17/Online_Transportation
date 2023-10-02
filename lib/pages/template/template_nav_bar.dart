import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemSelected;

  CustomNavBar({
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return WaterDropNavBar(
      selectedIndex: selectedIndex,
      onItemSelected: onItemSelected,
      backgroundColor: Color(0xFFffffff),
      waterDropColor: Color(0xFF111D41),
      iconSize: 30,
      barItems: [
        BarItem(
          filledIcon: Icons.home_filled,
          outlinedIcon: Icons.home_outlined,
        ),
        BarItem(
          filledIcon: Icons.forum,
          outlinedIcon: Icons.forum_outlined,
        ),
        BarItem(
          filledIcon: Icons.assignment,
          outlinedIcon: Icons.assignment_outlined,
        ),
        BarItem(
          filledIcon: Icons.person_2,
          outlinedIcon: Icons.person_2_outlined,
        ),
      ],
      bottomPadding: 15.0,
    );
  }
}
