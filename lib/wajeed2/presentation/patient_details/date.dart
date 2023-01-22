import 'package:final_grad_proj/core/app_export.dart';

class PatientDetailsScreentwoModel {
  DateTime selectedDateOneTxt = DateTime.now();

  Rx<String> dateOneTxt = Rx('Birthday');

  List<String> radioList = ["lbl_male", "lbl_female"];

  List<String> radioList1 = ["lbl_yes", "lbl_no"];
}