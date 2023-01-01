import 'package:food/controllers/count_controller.dart';
import 'package:get/instance_manager.dart';

import '../controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<CountController>(
      () => CountController(),
    );
  }
}
