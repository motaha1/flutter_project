import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/presentation/commentsspecialist_screen/models/commentsspecialist_model.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_bottom_bar.dart';

class CommentsspecialistController extends GetxController {
  Rx<CommentsspecialistModel> commentsspecialistModelObj =
      CommentsspecialistModel().obs;

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
