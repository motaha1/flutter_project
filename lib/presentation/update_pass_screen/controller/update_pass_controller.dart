import '/core/app_export.dart';import 'package:final_grad_proj/presentation/update_pass_screen/models/update_pass_model.dart';import 'package:flutter/material.dart';class UpdatePassController extends GetxController {TextEditingController passwordController = TextEditingController();

TextEditingController passwordOneController = TextEditingController();

Rx<UpdatePassModel> updatePassModelObj = UpdatePassModel().obs;

Rx<bool> isShowPassword = false.obs;

Rx<bool> isShowPassword1 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); passwordController.dispose(); passwordOneController.dispose(); } 
 }
