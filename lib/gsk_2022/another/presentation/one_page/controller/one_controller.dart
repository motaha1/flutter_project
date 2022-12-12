import '/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/one_page/models/one_model.dart';
import 'package:flutter/material.dart';

class OneController extends GetxController {
  OneController(this.oneModelObj);

  TextEditingController group681Controller = TextEditingController();

  TextEditingController group682Controller = TextEditingController();

  Rx<OneModel> oneModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group681Controller.dispose();
    group682Controller.dispose();
  }
}
