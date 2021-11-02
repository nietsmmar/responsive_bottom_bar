import 'package:flutter/material.dart';

class BottomBarItem {
  final IconData iconData;
  final String title;
  final int currentIndex;

  const BottomBarItem({
    Key? key,
    required this.iconData,
    required this.title,
    required this.currentIndex,
  });
}
