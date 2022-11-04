import '../controller/patient_details_screenone_controller.dart';
import 'package:get/get.dart';

class PatientDetailsScreenoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PatientDetailsScreenoneController());
  }
}
