import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:test_project/app/controllers/navigation_controller.dart';
import 'package:test_project/app/utils/constants/app_images.dart';
import 'package:test_project/app/utils/constants/colors.dart';

class CBottomNavigationBar extends GetView<NavigationController> {
  const CBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.navbar,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey,
        currentIndex: controller.currentIndex.value,
        onTap: controller.changeIndex,
        items: [
          navBarItem(AppImages.home, 'Home', 0),
          navBarItem(AppImages.search, 'Discover', 1),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(8),
              height: 40,
              width: 60,
              decoration: BoxDecoration(
                gradient: AppColors.backgroundGradient,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(Icons.add, color: Colors.white),
            ),
            label: '',
          ),
          navBarItem(AppImages.deals, 'Deals', 3),
          navBarItem(AppImages.profile, 'Profile', 4),
        ],
      ),
    );
  }

  BottomNavigationBarItem navBarItem(String iconPath, String label, int index) {
    bool isSelected = controller.currentIndex.value == index;
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(
          isSelected ? AppColors.primary : AppColors.grey,
          BlendMode.srcIn,
        ),
      ),
      label: label,
    );
  }
}
