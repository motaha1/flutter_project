import '../controller/specialist_screen_container_controller.dart';
import 'package:get/get.dart';

class SpecialistScreenContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpecialistScreenContainerController());
  }
}
