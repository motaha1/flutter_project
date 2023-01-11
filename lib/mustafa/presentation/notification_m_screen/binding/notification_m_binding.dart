import '../controller/notification_m_controller.dart';
import 'package:get/get.dart';

class NotificationMBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationMController());
  }
}
