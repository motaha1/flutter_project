import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/presentation/calls_screen/models/calls_model.dart';

class CallsController extends GetxController {
  Rx<CallsModel> callsModelObj = CallsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
