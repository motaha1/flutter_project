import '../controller/phone_success_controller.dart';
import 'package:get/get.dart';

class PhoneSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhoneSuccessController());
  }
}
