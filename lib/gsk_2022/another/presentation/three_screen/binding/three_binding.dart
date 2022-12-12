import '../controller/three_controller.dart';
import 'package:get/get.dart';

class ThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ThreeController());
  }
}
