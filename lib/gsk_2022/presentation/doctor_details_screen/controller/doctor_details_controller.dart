import '/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/presentation/doctor_details_screen/models/doctor_details_model.dart';
import 'package:flutter/material.dart';

class DoctorDetailsController extends GetxController {
  TextEditingController languageTwoController = TextEditingController();

  TextEditingController languageThreeController = TextEditingController();

  Rx<DoctorDetailsModel> doctorDetailsModelObj = DoctorDetailsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    languageTwoController.dispose();
    languageThreeController.dispose();
  }
}
