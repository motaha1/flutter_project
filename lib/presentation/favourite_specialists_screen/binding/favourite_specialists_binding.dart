import '../controller/favourite_specialists_controller.dart';
import 'package:get/get.dart';

class FavouriteSpecialistsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavouriteSpecialistsController());
  }
}
