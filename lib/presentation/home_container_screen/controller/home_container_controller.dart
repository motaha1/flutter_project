import '/core/app_export.dart';import 'package:final_grad_proj/presentation/home_container_screen/models/home_container_model.dart';import 'package:final_grad_proj/widgets/custom_bottom_bar.dart';class HomeContainerController extends GetxController {Rx<HomeContainerModel> homeContainerModelObj = HomeContainerModel().obs;

Rx<BottomBarEnum> type = BottomBarEnum.ImggroupindigoA400.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
@override void onInit() {  } 
 }
