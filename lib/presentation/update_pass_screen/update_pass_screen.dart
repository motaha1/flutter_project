import 'controller/update_pass_controller.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/core/utils/validation_functions.dart';
import 'package:final_grad_proj/widgets/custom_button.dart';
import 'package:final_grad_proj/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UpdatePassScreen extends GetWidget<UpdatePassController> {
 // GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                     //   key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: size.height,
                                      width: size.width,
                                      child: Stack(
                                          alignment: Alignment.topCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgBgWhiteA700,
                                                    height:
                                                        getVerticalSize(812.00),
                                                    width: getHorizontalSize(
                                                        375.00))),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 16,
                                                        top: 37,
                                                        right: 16,
                                                        bottom: 37),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right:
                                                                          10),
                                                              child: InkWell(
                                                                  onTap: () {
                                                                    onTapImgArrowleft();
                                                                  },
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgArrowleft,
                                                                      height: getSize(
                                                                          14.00),
                                                                      width: getSize(
                                                                          14.00)))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 2,
                                                                      top: 49,
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_reset_password"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRubikMedium24)),
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      312.00),
                                                              margin: getMargin(
                                                                  top: 17,
                                                                  right: 10),
                                                              child: Text(
                                                                  "msg_set_the_new_pas"
                                                                      .tr,
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRubikRegular14)),
                                                          Obx(() =>
                                                              CustomTextFormField(
                                                                  width: 335,
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  controller:
                                                                      controller
                                                                          .passwordController,
                                                                  hintText:
                                                                      "lbl_new_password"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              27),
                                                                  suffix:
                                                                      InkWell(
                                                                          onTap:
                                                                              () {
                                                                            controller.isShowPassword.value =
                                                                                !controller.isShowPassword.value;
                                                                          },
                                                                          child: Container(
                                                                              margin: getMargin(left: 30, top: 20, right: 24, bottom: 19),
                                                                              child: CommonImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgEye : ImageConstant.imgEye))),
                                                                  suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(16.00), minHeight: getVerticalSize(14.00)),
                                                                  validator: (value) {
                                                                    if (value ==
                                                                            null ||
                                                                        (!isValidPassword(
                                                                            value,
                                                                            isRequired:
                                                                                true))) {
                                                                      return "Please enter valid password";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  isObscureText: !controller.isShowPassword.value)),
                                                          Obx(() =>
                                                              CustomTextFormField(
                                                                  width: 335,
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  controller:
                                                                      controller
                                                                          .passwordOneController,
                                                                  hintText:
                                                                      "msg_re_enter_passwo"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              16),
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .done,
                                                                  suffix:
                                                                      InkWell(
                                                                          onTap:
                                                                              () {
                                                                            controller.isShowPassword1.value =
                                                                                !controller.isShowPassword1.value;
                                                                          },
                                                                          child: Container(
                                                                              margin: getMargin(left: 30, top: 20, right: 24, bottom: 20),
                                                                              child: CommonImageView(svgPath: controller.isShowPassword1.value ? ImageConstant.imgEye : ImageConstant.imgEye))),
                                                                  suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(16.00), minHeight: getVerticalSize(14.00)),
                                                                  validator: (value) {
                                                                    if (value ==
                                                                            null ||
                                                                        (!isValidPassword(
                                                                            value,
                                                                            isRequired:
                                                                                true))) {
                                                                      return "Please enter valid password";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  isObscureText: !controller.isShowPassword1.value)),
                                                          CustomButton(
                                                              width: 295,
                                                              text:
                                                                  "lbl_update_password"
                                                                      .tr,
                                                              margin: getMargin(
                                                                  left: 20,
                                                                  top: 18,
                                                                  right: 20),
                                                              shape: ButtonShape
                                                                  .RoundedBorder28,
                                                              padding: ButtonPadding
                                                                  .PaddingAll13,
                                                              onTap:
                                                                  onTapBtnUpdatepassword,
                                                              alignment:
                                                                  Alignment
                                                                      .center)
                                                        ])))
                                          ])))
                            ]))))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  onTapBtnUpdatepassword() {
    Get.toNamed(AppRoutes.settingsScreen);
  }
}
