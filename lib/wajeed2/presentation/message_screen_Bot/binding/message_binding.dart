import '../controller/message_controller.dart';
import 'package:get/get.dart';

class MessageBindingB extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MessageControllerB());
  }
}
