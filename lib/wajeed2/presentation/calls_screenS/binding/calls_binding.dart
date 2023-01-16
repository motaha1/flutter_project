import '../controller/calls_controller.dart';
import 'package:get/get.dart';

class CallsSBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallsController());
  }
}
