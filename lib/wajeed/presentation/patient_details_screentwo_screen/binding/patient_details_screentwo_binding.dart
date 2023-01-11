import '../controller/patient_details_screentwo_controller.dart';
import 'package:get/get.dart';

class PatientDetailsScreentwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PatientDetailsScreentwoController());
  }
}
