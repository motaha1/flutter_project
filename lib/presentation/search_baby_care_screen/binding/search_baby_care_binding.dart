import '../controller/search_baby_care_controller.dart';
import 'package:get/get.dart';

class SearchBabyCareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchBabyCareController());
  }
}
