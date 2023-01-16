import '../controller/chatspacialist_controller.dart';
import 'package:get/get.dart';

class ChatspacialistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatspacialistController());
  }
}
