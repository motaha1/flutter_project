import '../controller/notification_s_controller.dart';
import 'package:get/get.dart';

class NotificationSBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationSController());
  }
}
