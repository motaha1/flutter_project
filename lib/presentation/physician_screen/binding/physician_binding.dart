import '../controller/physician_controller.dart';
import 'package:get/get.dart';

class PhysicianBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PhysicianController());
  }
}
