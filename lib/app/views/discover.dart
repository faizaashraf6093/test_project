import 'package:flutter/material.dart';
import 'package:test_project/app/common/widgets/custom_bottom_navigation.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Discover Screen'),
      ),
      bottomNavigationBar: CBottomNavigationBar(),
    );
  }
}
