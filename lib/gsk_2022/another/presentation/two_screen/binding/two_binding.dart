import '../controller/two_controller.dart';
import 'package:get/get.dart';

class TwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwoController());
  }
}
