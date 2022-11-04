import '/core/app_export.dart';import 'package:final_grad_proj/presentation/reset_p_screen/models/reset_p_model.dart';import 'package:flutter/material.dart';class ResetPController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController passwordOneController = TextEditingController();

Rx<ResetPModel> resetPModelObj = ResetPModel().obs;

Rx<bool> isShowPassword = false.obs;

Rx<bool> isShowPassword1 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); passwordController.dispose(); passwordOneController.dispose(); } 
 }
