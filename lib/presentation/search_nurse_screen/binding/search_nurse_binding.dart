import '../controller/search_nurse_controller.dart';
import 'package:get/get.dart';

class SearchNurseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchNurseController());
  }
}
