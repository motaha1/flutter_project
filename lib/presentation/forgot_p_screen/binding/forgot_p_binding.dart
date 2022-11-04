import '../controller/forgot_p_controller.dart';
import 'package:get/get.dart';

class ForgotPBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ForgotPController());
  }
}
