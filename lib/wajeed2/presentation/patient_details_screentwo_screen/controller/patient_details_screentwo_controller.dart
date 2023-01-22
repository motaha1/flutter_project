import '/core/app_export.dart';
import 'package:final_grad_proj/presentation/patient_details_screentwo_screen/models/patient_details_screentwo_model.dart';
import 'package:flutter/material.dart';

class PatientDetailsScreentwoController extends GetxController {
  TextEditingController memberController = TextEditingController();

  Rx<PatientDetailsScreentwoModel> patientDetailsScreentwoModelObj =
      PatientDetailsScreentwoModel().obs;

  RxString radioGroup = "".obs;

  RxString radioGroup1 = "".obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    memberController.dispose();
  }
}
