import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/utils/constants/app_strings.dart';
import 'package:test_project/app/utils/constants/colors.dart';
import 'package:test_project/app/views/home/home.dart';

import 'app/bindings/bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
        ),
        useMaterial3: true,
        fontFamily: AppStrings.fontFamily,
      ),
      initialBinding: AllBindings(),
      home: const HomeScreen(),
    );
  }
}
