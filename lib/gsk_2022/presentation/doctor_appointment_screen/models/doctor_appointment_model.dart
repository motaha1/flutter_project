import 'package:get/get.dart';

class DoctorAppointmentModel {
  DateTime selectedDateTxt = DateTime.now();

  Rx<String> dateTxt = Rx('Lorem ipsum dolor sit amet');
}
