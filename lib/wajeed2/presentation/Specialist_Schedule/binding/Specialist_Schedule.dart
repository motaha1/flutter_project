import '../controller/Patient_RecordsController_controller.dart';
import 'package:get/get.dart';

class Specialist_ScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Patient_RecordsController());
  }
}
