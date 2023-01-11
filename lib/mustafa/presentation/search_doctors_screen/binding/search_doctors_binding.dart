import '../controller/search_doctors_controller.dart';
import 'package:get/get.dart';

class SearchDoctorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchDoctorsController());
  }
}
