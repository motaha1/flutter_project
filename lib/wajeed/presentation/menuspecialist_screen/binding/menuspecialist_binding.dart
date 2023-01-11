import '../controller/menuspecialist_controller.dart';
import 'package:get/get.dart';

class MenuspecialistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MenuspecialistController());
  }
}
