import '/core/app_export.dart';import 'package:final_grad_proj/presentation/login_screen/models/login_model.dart';import 'package:flutter/material.dart';class LoginController extends GetxController {TextEditingController emailController = TextEditingController();

Rx<LoginModel> loginModelObj = LoginModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); emailController.dispose(); } 
 }
