import '../controller/help_center_controller.dart';
import 'package:get/get.dart';

class HelpCenterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpCenterController());
  }
}
