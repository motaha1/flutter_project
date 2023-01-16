import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/presentation/calls_screen/models/calls_model.dart'; //
import 'package:flutter/cupertino.dart';

class CallsController extends GetxController {
  Rx<CallsModel> callsModelObj = CallsModel().obs;
  TextEditingController group3620Controller = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
