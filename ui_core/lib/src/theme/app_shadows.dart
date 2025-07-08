import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppShadows {
  static List<BoxShadow> shadowSmall = [
    BoxShadow(
      color: Colors.black.withOpacity(0.08),
      blurRadius: 15,
    ),
  ];

  static List<BoxShadow> shadowMedium = [
    BoxShadow(
      color: Colors.black.withOpacity(0.05),
      blurRadius: 20,
    ),
  ];

  static List<BoxShadow> shadowHigh = [
    BoxShadow(
      color: Colors.black.withOpacity(0.1),
      blurRadius: 25,
    ),
  ];
}
