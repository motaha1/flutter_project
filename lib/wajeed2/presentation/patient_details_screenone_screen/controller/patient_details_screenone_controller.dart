import '/core/app_export.dart';
import 'package:final_grad_proj/presentation/patient_details_screenone_screen/models/patient_details_screenone_model.dart';
import 'package:flutter/material.dart';

class PatientDetailsScreenoneController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController numberController = TextEditingController();

  Rx<PatientDetailsScreenoneModel> patientDetailsScreenoneModelObj =
      PatientDetailsScreenoneModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.patientDetailsScreentwoScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    numberController.dispose();
  }
}
