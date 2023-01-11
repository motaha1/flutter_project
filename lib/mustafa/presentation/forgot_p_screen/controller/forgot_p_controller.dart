import '/core/app_export.dart';
import 'package:final_grad_proj/mustafa/presentation/forgot_p_screen/models/forgot_p_model.dart';
import 'package:flutter/material.dart';

class ForgotPController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgotPModel> forgotPModelObj = ForgotPModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
