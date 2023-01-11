import '../controller/doctor_details_controller.dart';
import 'package:get/get.dart';

class DoctorDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoctorDetailsController());
  }
}
