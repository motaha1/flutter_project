import '../controller/update_pass_controller.dart';
import 'package:get/get.dart';

class UpdatePassBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UpdatePassController());
  }
}
