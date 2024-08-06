import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const primary = Color(0xFF3CFEDE);
  static const secondary = Color(0xFF3263B0);
  static const navbar = Color(0xFF0D2444);
  static const yellow = Color(0xFFF6A826);
  static const grey = Color(0xFFA0ACBD);

  static const LinearGradient backgroundGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      primary,
      secondary,
    ],
  );
}
