import 'controller/login_controller.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/core/utils/validation_functions.dart';
import 'package:final_grad_proj/widgets/custom_button.dart';
import 'package:final_grad_proj/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/domain/googleauth/google_auth_helper.dart';
import 'package:final_grad_proj/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginScreen extends GetWidget<LoginController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
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
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 127,
                                                    right: 20),
                                                child: Text(
                                                    "lbl_welcome_back".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikMedium24)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 13,
                                                    right: 20),
                                                child: Text(
                                                    "msg_your_care_await".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikRegular14)),
                                            Container(
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 104,
                                                    right: 20),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                27.00))),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomButton(
                                                          width: 160,
                                                          text: "lbl_google".tr,
                                                          variant: ButtonVariant
                                                              .OutlineBlack9000f,
                                                          shape: ButtonShape
                                                              .CircleBorder25,
                                                          fontStyle: ButtonFontStyle
                                                              .RubikLight16,
                                                          prefixWidget: Container(
                                                              margin: getMargin(
                                                                  right: 12),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              9.09))),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgGroup,
                                                                  height:
                                                                      getSize(
                                                                          18.00),
                                                                  width: getSize(
                                                                      18.00))),
                                                          onTap:
                                                              onTapBtnGoogle),
                                                      CustomButton(
                                                          width: 160,
                                                          text:
                                                              "lbl_facebook".tr,
                                                          variant: ButtonVariant
                                                              .OutlineBlack9000f,
                                                          shape: ButtonShape
                                                              .CircleBorder25,
                                                          fontStyle: ButtonFontStyle
                                                              .RubikLight16,
                                                          prefixWidget: Container(
                                                              margin: getMargin(
                                                                  right: 16),
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              9.09))),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgGroupWhiteA70018X18,
                                                                  height:
                                                                      getSize(
                                                                          18.00),
                                                                  width: getSize(
                                                                      18.00))),
                                                          onTap:
                                                              onTapBtnFacebook)
                                                    ])),
                                            CustomTextFormField(
                                                width: 335,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .emailController,
                                                hintText: "msg_itsmemamun1_gma"
                                                    .tr,
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 37,
                                                    right: 20),
                                                textInputAction: TextInputAction
                                                    .done,
                                                suffix: Container(
                                                    margin: getMargin(
                                                        left: 30,
                                                        top: 21,
                                                        right: 25,
                                                        bottom: 22),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheckmark)),
                                                suffixConstraints:
                                                    BoxConstraints(
                                                        minWidth:
                                                            getHorizontalSize(
                                                                15.00),
                                                        minHeight:
                                                            getVerticalSize(
                                                                11.00)),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidEmail(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid email";
                                                  }
                                                  return null;
                                                }),
                                            Padding(
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 18,
                                                    right: 20),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgPassword,
                                                    height:
                                                        getVerticalSize(54.00),
                                                    width: getHorizontalSize(
                                                        335.00))),
                                            CustomButton(
                                                width: 295,
                                                text: "lbl_login2".tr,
                                                margin: getMargin(
                                                    left: 20,
                                                    top: 32,
                                                    right: 20),
                                                shape:
                                                    ButtonShape.RoundedBorder28,
                                                padding:
                                                    ButtonPadding.PaddingAll13,
                                                onTap: onTapBtnLogin2),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtForgotpassword();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 20,
                                                        top: 19,
                                                        right: 20),
                                                    child: Text(
                                                        "lbl_forgot_password"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikRegular14IndigoA400))),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtDonthaveana();
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 20,
                                                        top: 123,
                                                        right: 20,
                                                        bottom: 46),
                                                    child: Text(
                                                        "msg_don_t_have_an_a"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikRegular14IndigoA400)))
                                          ]))
                                ])))))));
  }

  onTapBtnGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapBtnFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapBtnLogin2() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapTxtForgotpassword() {
    Get.toNamed(AppRoutes.forgotPScreen);
  }

  onTapTxtDonthaveana() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}
