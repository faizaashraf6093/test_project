import 'package:flutter/material.dart';
import 'package:test_project/app/common/widgets/custom_bottom_navigation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Profile Screen'),
      ),
      bottomNavigationBar: CBottomNavigationBar(),
    );
  }
}
