import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/presentation/specialist_screen_container_screen/models/specialist_screen_container_model.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_bottom_bar.dart';

class SpecialistScreenContainerController extends GetxController {
  Rx<SpecialistScreenContainerModel> specialistScreenContainerModelObj =
      SpecialistScreenContainerModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Groupindigoa40029x20.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void onInit() {}
}
