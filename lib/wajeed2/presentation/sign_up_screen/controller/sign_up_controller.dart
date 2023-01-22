import '/core/app_export.dart';
import 'package:final_grad_proj/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';
class SignUpController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController phoneController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

Rx<bool> isShowPassword = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); 
nameController.dispose(); 
emailController.dispose();
 phoneController.dispose();
  passwordController.dispose(); } 
 }
