// <<<<<<< HEAD
// import 'controller/users_controller.dart';import 'package:final_grad_proj/mustafa/core/app_export.dart';import 'package:final_grad_proj/mustafa/widgets/custom_button.dart';import 'package:flutter/material.dart';class UsersScreen extends GetWidget<UsersController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: size.width, child: SingleChildScrollView(child: Container(height: size.height, width: size.width, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerLeft, child: CommonImageView(imagePath: ImageConstant.imgBg, height: getVerticalSize(812.00), width: getHorizontalSize(375.00))), Align(alignment: Alignment.centerLeft, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 40, top: 152, right: 40), child: Text("msg_choose_your_use".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikMedium24))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 40, top: 20, right: 40), child: Text("msg_choose_the_type".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikRegular14))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 40, top: 68, right: 40), child: CommonImageView(imagePath: ImageConstant.img0033, height: getSize(200.00), width: getSize(200.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 40, right: 40), child: Text("lbl_doctor".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikMedium17))), CustomButton(width: 220, text: "lbl_continue".tr, margin: getMargin(left: 40, top: 67, right: 40, bottom: 183), shape: ButtonShape.RoundedBorder28, onTap: onTapBtnContinue, alignment: Alignment.center)]))])))))); }
// onTapBtnContinue() { Get.toNamed(AppRoutes.verifyOtpScreen); }
//  }
// =======
import 'controller/users_controller.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class UsersScreen extends GetWidget<UsersController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgBg,
                                  height: getVerticalSize(812.00),
                                  width: getHorizontalSize(375.00))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 40, top: 152, right: 40),
                                            child: Text(
                                                "msg_choose_your_use".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikMedium24))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 40, top: 20, right: 40),
                                            child: Text(
                                                "msg_choose_the_type".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRegular14))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 40, top: 68, right: 40),
                                            child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.img0033,
                                                height: getSize(200.00),
                                                width: getSize(200.00)))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 40, right: 40),
                                            child: Text("lbl_doctor".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikMedium17))),
                                    CustomButton(
                                        width: 220,
                                        text: "lbl_continue".tr,
                                        margin: getMargin(
                                            left: 40,
                                            top: 67,
                                            right: 40,
                                            bottom: 183),
                                        shape: ButtonShape.RoundedBorder28,
                                        onTap: onTapBtnContinue,
                                        alignment: Alignment.center)
                                  ]))
                        ]))))));
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.verifyOtpScreen);
  }
}
// >>>>>>> f87d49c9eb51e77eae1242417ac9a2a1b0c0b0a6
