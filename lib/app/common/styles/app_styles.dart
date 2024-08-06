import 'package:flutter/material.dart';
import 'package:test_project/app/utils/constants/colors.dart';

class AppStyles {
  AppStyles._();

  static const TextStyle mediumSemibold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle productHeading = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  static const TextStyle price = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.yellow,
  );
}
