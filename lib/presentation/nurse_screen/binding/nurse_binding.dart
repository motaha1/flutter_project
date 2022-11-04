import '../controller/nurse_controller.dart';
import 'package:get/get.dart';

class NurseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NurseController());
  }
}
