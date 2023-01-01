import 'package:food/models/categories/data_categories.dart';
import 'package:food/models/popular/data_popular.dart';
import 'package:food/services/categories_services.dart';
import 'package:food/services/popular_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<DataCategories> listCategories = <DataCategories>[].obs;
  RxList<DataPopular> listPopular = <DataPopular>[].obs;

  @override
  void onInit() {
    getCategory();
    getPopular();
    super.onInit();
  }

  void getCategory() async {
    final result = await ServiceCategories().getCategory();
    result.fold(
      (l) => {print(l)},
      (r) {
        listCategories.value = r;
      },
    );
  }

  void getPopular() async {
    final result = await PopularService().getDataPopular();
    result.fold(
      (l) => {print(l)},
      (r) {
        listPopular.value = r;
      },
    );
  }
}
