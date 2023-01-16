import 'package:final_grad_proj/wajeed2/presentation/chat_page/controller/chat_controller.dart';
import 'package:get/get.dart';

class CallsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
  }
}
