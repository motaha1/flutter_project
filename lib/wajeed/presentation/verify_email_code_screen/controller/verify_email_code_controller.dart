import '/core/app_export.dart';
import 'package:final_grad_proj/wajeed/presentation/verify_email_code_screen/models/verify_email_code_model.dart';
import 'package:flutter/material.dart';

class VerifyEmailCodeController extends GetxController {
  TextEditingController emailController = TextEditingController();
  Rx<VerifyEmailCodeModel> verifyEmailCodeModelObj = VerifyEmailCodeModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
