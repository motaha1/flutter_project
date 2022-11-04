import '/core/app_export.dart';import 'package:final_grad_proj/presentation/verify_otp_screen/models/verify_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';import 'package:flutter/material.dart';class VerifyOtpController extends GetxController with  CodeAutoFill {Rx<TextEditingController> otpController = TextEditingController().obs;

Rx<VerifyOtpModel> verifyOtpModelObj = VerifyOtpModel().obs;

@override void codeUpdated() { otpController.value.text = code!; } 
@override void onInit() { super.onInit(); listenForCode(); } 
@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
