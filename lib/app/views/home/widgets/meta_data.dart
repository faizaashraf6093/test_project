import 'package:flutter/material.dart';
import 'package:test_project/app/common/styles/app_styles.dart';
import 'package:test_project/app/controllers/home_controller.dart';
import 'package:test_project/app/models/post_models.dart';
import 'package:test_project/app/utils/constants/colors.dart';
import 'package:test_project/app/utils/helper/helper_functions.dart';

import '../../../common/widgets/carousel_indicator.dart';

class VideoMetaData extends StatelessWidget {
  const VideoMetaData({
    super.key,
    this.data,
    required this.controller,
    required this.mediaItems,
  });

  final Post? data;
  final HomeController controller;
  final List<Widget> mediaItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data?.postTitle ?? '',
            style: AppStyles.productHeading,
          ),
          Text(
            'AED ${data?.price.toString() ?? ''}',
            style: AppStyles.price,
          ),
          Text(
            '${data?.description.toString() ?? ''} ${data?.hashtagTitles ?? ''}',
            style: AppStyles.mediumSemibold,
          ),
          Row(
            children: [
              Text(
                HelperFunctions.countryCodeToEmoji('AE'),
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(width: 5),
              const Text(
                'United Arab Emirates',
                style: AppStyles.mediumSemibold,
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              gradient: AppColors.backgroundGradient,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text(
              'Visit Website',
              style: AppStyles.mediumSemibold,
            ),
          ),
          // Carousel Indicator
          CarouselIndicator(
            itemCount: mediaItems.length,
            currentIndex: controller.currentCarouselIndex.value,
          ),
        ],
      ),
    );
  }
}
