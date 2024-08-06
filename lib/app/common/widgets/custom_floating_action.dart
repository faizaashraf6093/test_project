import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project/app/common/styles/app_styles.dart';
import 'package:test_project/app/utils/constants/colors.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    super.key,
    required this.icon,
    required this.label,
  });

  final String icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          decoration: const BoxDecoration(
            gradient: AppColors.backgroundGradient,
            shape: BoxShape.circle,
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            child: SvgPicture.asset(icon),
          ),
        ),
        Text(
          label,
          style: AppStyles.mediumSemibold,
        ),
      ],
    );
  }
}
