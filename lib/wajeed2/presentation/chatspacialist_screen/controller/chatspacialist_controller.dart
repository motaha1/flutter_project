import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/presentation/chatspacialist_screen/models/chatspacialist_model.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_bottom_bar.dart';

class ChatspacialistController extends GetxController {
  Rx<ChatspacialistModel> chatspacialistModelObj = ChatspacialistModel().obs;

  Rx<BottomBarEnum> type = BottomBarEnum.Groupindigoa40029x20.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
