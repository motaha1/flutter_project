import '../controller/verify_email_code_controller.dart';
import 'package:get/get.dart';

class VerifyEmailCodeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyEmailCodeController());
  }
}
