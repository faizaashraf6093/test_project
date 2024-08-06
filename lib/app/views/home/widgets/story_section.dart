import 'package:flutter/material.dart';
import 'package:test_project/app/common/widgets/story_widgets.dart';

import '../../../controllers/home_controller.dart';

class StorySection extends StatelessWidget {
  const StorySection({
    super.key,
    required this.controller,
  });

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        controller: ScrollController(),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: controller.storiesList.map((stories) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: StoryCircle(
                img: stories["url"]!,
                label: stories["title"]!,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
