import '/core/app_export.dart';
import 'package:final_grad_proj/presentation/splash_screen/models/splash_model.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(seconds: 1), () {
      Get.toNamed(AppRoutes.walkthroughThreeScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
