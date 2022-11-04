import '/core/app_export.dart';import 'package:final_grad_proj/presentation/patient_details_screenone_screen/models/patient_details_screenone_model.dart';import 'package:flutter/material.dart';class PatientDetailsScreenoneController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController numberController = TextEditingController();

TextEditingController languageOneController = TextEditingController();

TextEditingController languageTwoController = TextEditingController();

Rx<PatientDetailsScreenoneModel> patientDetailsScreenoneModelObj = PatientDetailsScreenoneModel().obs;

RxString radioGroup = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); nameController.dispose(); emailController.dispose(); passwordController.dispose(); numberController.dispose(); languageOneController.dispose(); languageTwoController.dispose(); } 
 }
