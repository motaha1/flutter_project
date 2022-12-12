import '../controller/doctor_appointment_controller.dart';
import 'package:get/get.dart';

class DoctorAppointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorAppointmentController());
  }
}
