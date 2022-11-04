import '../controller/search_physician_controller.dart';
import 'package:get/get.dart';

class SearchPhysicianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SearchPhysicianController());
  }
}
