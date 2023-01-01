import 'package:get/state_manager.dart';

class CountController extends GetxController {
  RxInt countCart = 0.obs;

  addCart() => countCart.value++;
}
