import 'package:get/get.dart';
import 'package:test_project/app/views/add_video.dart';
import 'package:test_project/app/views/deals.dart';
import 'package:test_project/app/views/discover.dart';
import 'package:test_project/app/views/home/home.dart';
import 'package:test_project/app/views/profile.dart';

class NavigationController extends GetxController {
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
    navigatePage(currentIndex.value);
  }

  void navigatePage(int index) {
    switch (index) {
      case 0:
        Get.to(() => const HomeScreen());
        break;
      case 1:
        Get.to(() => const DiscoverScreen());
      case 2:
        Get.to(() => const AddVideoScreen());
      case 3:
        Get.to(() => const DealsScreen());
      case 4:
        Get.to(() => const ProfileScreen());
      default:
        Get.to(() => const HomeScreen());
    }
  }
}
