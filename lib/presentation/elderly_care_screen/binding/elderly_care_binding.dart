import '../controller/elderly_care_controller.dart';
import 'package:get/get.dart';

class ElderlyCareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ElderlyCareController());
  }
}
