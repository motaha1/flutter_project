import 'package:get/get.dart';

class PatientDetailsScreentwoModel {
  DateTime selectedDateOneTxt = DateTime.now();

  Rx<String> dateOneTxt = Rx('Lorem ipsum dolor sit amet');

  List<String> radioList = ["lbl_male", "lbl_female"];

  List<String> radioList1 = ["lbl_yes", "lbl_no"];
}
