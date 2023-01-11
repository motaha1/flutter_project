import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/presentation/specialist_screen_page/models/specialist_screen_model.dart';
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

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    specialistScreenModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    specialistScreenModelObj.value.dropdownItemList.refresh();
  }
}
