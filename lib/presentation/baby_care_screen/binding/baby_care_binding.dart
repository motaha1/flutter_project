import '../controller/baby_care_controller.dart';
import 'package:get/get.dart';

class BabyCareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BabyCareController());
  }
}
