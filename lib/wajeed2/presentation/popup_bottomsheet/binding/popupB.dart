import 'package:final_grad_proj/wajeed2/presentation/popup_bottomsheet/controller/popup_controller.dart';
import 'package:get/get.dart';

class popupB extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PopupController());
  }
}
