import 'package:flutter/material.dart';
import 'package:test_project/app/utils/constants/colors.dart';

class CarouselIndicator extends StatelessWidget {
  final int itemCount;
  final int currentIndex;

  const CarouselIndicator({
    super.key,
    required this.itemCount,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(itemCount, (index) {
          return Container(
            width: 20,
            height: 8,
            margin: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: currentIndex == index ? AppColors.yellow : Colors.white,
            ),
          );
        }),
      ),
    );
  }
}
