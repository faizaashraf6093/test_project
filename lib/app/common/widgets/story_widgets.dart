import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project/app/common/styles/app_styles.dart';
import 'package:test_project/app/utils/constants/colors.dart';

class StoryCircle extends StatelessWidget {
  const StoryCircle({
    super.key,
    required this.label,
    required this.img,
  });

  final String label;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: AppColors.primary,
            ),
          ),
          child: img.contains('.svg')
              ? CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  child: SvgPicture.asset(
                    img,
                    colorFilter:
                        const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                )
              : CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(img),
                ),
        ),
        Text(
          label,
          style: AppStyles.mediumSemibold,
        )
      ],
    );
  }
}
