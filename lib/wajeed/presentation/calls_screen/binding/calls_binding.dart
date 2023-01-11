import '../controller/calls_controller.dart';
import 'package:get/get.dart';

class CallsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CallsController());
  }
}
