import '../controller/reset_p_controller.dart';
import 'package:get/get.dart';

class ResetPBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ResetPController());
  }
}
