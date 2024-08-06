import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:test_project/app/models/post_models.dart';
import 'package:test_project/app/services/api_services.dart';
import 'package:test_project/app/utils/constants/app_images.dart';

class HomeController extends GetxController {
  var currentCarouselIndex = 0.obs;
  final ApiServices _apiServices = Get.put(ApiServices());
  var postsData = PostModel().obs;

  final storiesList = [
    {"url": AppImages.plus, "title": "Add Listing"},
    {"url": AppImages.search, "title": "Search"},
    {"url": AppImages.notification, "title": "Notifications"},
    {"url": AppImages.appliances, "title": "Appliances"},
    {"url": AppImages.electronics, "title": "Electronics"},
    {"url": AppImages.mobile, "title": "Mobiles"},
  ];

  @override
  void onInit() {
    fetchPostData();
    super.onInit();
  }

  Future<void> fetchPostData() async {
    try {
      final data = await _apiServices.fetchPostsData();
      postsData.value = PostModel.fromJson(data!);
    } catch (e) {
      debugPrint('Could not fetch data: $e');
    }
  }
}
