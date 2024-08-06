import 'package:flutter/material.dart';
import 'package:test_project/app/common/widgets/custom_bottom_navigation.dart';

class AddVideoScreen extends StatelessWidget {
  const AddVideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Add Your Video'),
      ),
      bottomNavigationBar: CBottomNavigationBar(),
    );
  }
}
