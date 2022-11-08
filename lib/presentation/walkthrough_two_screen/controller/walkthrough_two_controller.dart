import 'package:flutter/cupertino.dart';

import '/core/app_export.dart';
import 'package:final_grad_proj/presentation/walkthrough_two_screen/models/walkthrough_two_model.dart';

class WalkthroughTwoController extends GetxController {
  Rx<WalkthroughTwoModel> walkthroughTwoModelObj = WalkthroughTwoModel().obs;

  //final controller =PageController(viewportFraction: 0.8, keepPage: true, initialPage: 1);
      
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
