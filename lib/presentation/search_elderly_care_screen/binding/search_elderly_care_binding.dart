import '../controller/search_elderly_care_controller.dart';
import 'package:get/get.dart';

class SearchElderlyCareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchElderlyCareController());
  }
}
