import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_project/app/common/widgets/custom_bottom_navigation.dart';
import 'package:test_project/app/controllers/home_controller.dart';
import 'package:test_project/app/utils/constants/app_images.dart';
import 'package:test_project/app/views/home/widgets/video_player_item.dart';

import '../../common/widgets/custom_floating_action.dart';
import 'widgets/image_view.dart';
import 'widgets/meta_data.dart';
import 'widgets/story_section.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        backgroundColor: Colors.transparent,
        title: StorySection(controller: controller),
      ),
      extendBodyBehindAppBar: true,
      body: PageView.builder(
        itemCount: controller.postsData.value.posts?.length ?? 0,
        controller: PageController(
          initialPage: 0,
          viewportFraction: 1,
        ),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          final data = controller.postsData.value.posts?[index];
          final mediaItems = <Widget>[];

          if (data?.postVideo != null && data!.postVideo!.isNotEmpty) {
            mediaItems.add(VideoPlayerItem(videoUrl: data.postVideo!));
          }

          // The Images in the API wont work as the url is not valid.
          if (data?.images != null) {
            for (var image in data!.images!) {
              mediaItems.add(const ImageItem());
            }
          }

          return Stack(
            children: [
              // Media content (Video or Images)
              Positioned.fill(
                child: CarouselSlider(
                  items: mediaItems,
                  options: CarouselOptions(
                    height: double.infinity,
                    viewportFraction: 1.0,
                    enableInfiniteScroll: false,
                    autoPlay: false,
                    onPageChanged: (index, reason) {
                      controller.currentCarouselIndex.value = index;
                    },
                  ),
                ),
              ),
              // Title and Description
              VideoMetaData(
                controller: controller,
                data: data,
                mediaItems: mediaItems,
              ),
              // Button Section
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const GradientButton(
                        icon: AppImages.offers,
                        label: 'Offers',
                      ),
                      GradientButton(
                        icon: AppImages.like,
                        label: data?.likes?.toString() ?? '0',
                      ),
                      GradientButton(
                        icon: AppImages.comment,
                        label: data?.comments?.toString() ?? '0',
                      ),
                      GradientButton(
                        icon: AppImages.share,
                        label: data?.shares?.toString() ?? '0',
                      ),
                      const SizedBox(height: 20),
                      CircleAvatar(
                        radius: 26,
                        foregroundImage: NetworkImage(data?.profileImage ?? ''),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: const CBottomNavigationBar(),
    );
  }
}
