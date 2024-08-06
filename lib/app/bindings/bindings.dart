import 'package:get/get.dart';
import 'package:test_project/app/controllers/home_controller.dart';
import 'package:test_project/app/controllers/navigation_controller.dart';
import 'package:test_project/app/services/api_services.dart';

class AllBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiServices());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => NavigationController());
  }
}
