import '../controller/walkthrough_four_controller.dart';
import 'package:get/get.dart';

class WalkthroughFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WalkthroughFourController());
  }
}
