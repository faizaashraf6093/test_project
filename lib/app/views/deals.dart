import 'package:flutter/material.dart';
import 'package:test_project/app/common/widgets/custom_bottom_navigation.dart';

class DealsScreen extends StatelessWidget {
  const DealsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Deals Screen'),
      ),
      bottomNavigationBar: CBottomNavigationBar(),
    );
  }
}
