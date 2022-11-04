import '/core/app_export.dart';import 'package:final_grad_proj/presentation/walkthrough_four_screen/models/walkthrough_four_model.dart';class WalkthroughFourController extends GetxController {Rx<WalkthroughFourModel> walkthroughFourModelObj = WalkthroughFourModel().obs;

Rx<int> silderIndex = 0.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
