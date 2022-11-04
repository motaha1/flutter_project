import '../controller/log_out_controller.dart';
import 'package:get/get.dart';

class LogOutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LogOutController());
  }
}
