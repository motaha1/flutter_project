import 'controller/walkthrough_one_controller.dart';import 'package:final_grad_proj/core/app_export.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class WalkthroughOneScreen extends GetWidget<WalkthroughOneController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: size.width, child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(left: 40, top: 110, right: 40), child: CommonImageView(svgPath: ImageConstant.imgGroup1208, height: getVerticalSize(317.00), width: getHorizontalSize(291.00))), Padding(padding: getPadding(left: 40, top: 82, right: 40), child: Text("msg_online_healthca".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOverpassBold24.copyWith(height: 1.00))), Container(width: getHorizontalSize(243.00), margin: getMargin(left: 40, top: 46, right: 40), child: Text("msg_health_is_essen".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtOverpassLight16.copyWith(height: 1.50))), Padding(padding: getPadding(left: 40, top: 108, right: 38, bottom: 64), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [GestureDetector(onTap: () {onTapTxtSkip();}, child: Padding(padding: getPadding(top: 1), child: Text("lbl_skip".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOverpassRegular14))), Container(height: getVerticalSize(4.00), margin: getMargin(top: 7, bottom: 6), child: SmoothIndicator(offset: 0, count: 4, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: ColorConstant.indigoA400, dotColor: ColorConstant.gray400, dotHeight: getVerticalSize(4.00), dotWidth: getHorizontalSize(4.00)))), GestureDetector(onTap: () {onTapTxtNext();}, child: Padding(padding: getPadding(bottom: 3), child: Text("lbl_next".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOverpassBold14)))]))]))))); } 
onTapTxtSkip() { Get.toNamed(AppRoutes.welcomeScreen); } 
onTapTxtNext() { Get.toNamed(AppRoutes.walkthroughTwoScreen); } 
 }