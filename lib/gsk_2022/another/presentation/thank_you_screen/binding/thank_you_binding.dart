import '../controller/thank_you_controller.dart';
import 'package:get/get.dart';

class ThankYouBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThankYouController());
  }
}
