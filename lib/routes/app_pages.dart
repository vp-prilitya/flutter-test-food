import 'package:get/get_navigation/src/routes/get_route.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/view/HomeView.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
