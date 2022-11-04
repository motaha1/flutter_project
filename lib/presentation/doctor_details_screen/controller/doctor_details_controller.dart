import '/core/app_export.dart';import 'package:final_grad_proj/presentation/doctor_details_screen/models/doctor_details_model.dart';import 'package:flutter/material.dart';class DoctorDetailsController extends GetxController {TextEditingController languageOneController = TextEditingController();

TextEditingController languageTwoController = TextEditingController();

Rx<DoctorDetailsModel> doctorDetailsModelObj = DoctorDetailsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); languageOneController.dispose(); languageTwoController.dispose(); } 
 }
