import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/presentation/specialist_screen_page/models/specialist_screen_model.dart';
import 'package:flutter/material.dart';

class SpecialistScreenController extends GetxController {
  SpecialistScreenController(this.specialistScreenModelObj);

  TextEditingController group3620Controller = TextEditingController();

  Rx<SpecialistScreenModel> specialistScreenModelObj;

  SelectionPopupModel? selectedDropDownValue;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group3620Controller.dispose();
  }
}
