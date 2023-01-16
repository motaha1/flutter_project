import '../controller/commentsspecialist_controller.dart';
import 'package:get/get.dart';

class CommentsspecialistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommentsspecialistController());
  }
}
