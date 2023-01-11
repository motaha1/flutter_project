import 'controller/forgot_p_controller.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/core/utils/validation_functions.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_button.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/mustafa/domain/googleauth/google_auth_helper.dart';
import 'package:final_grad_proj/mustafa/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class ForgotPScreen extends GetWidget<ForgotPController> {
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
                                      alignment: Alignment.topCenter,
                                      child: GestureDetector(
                                          onTap: () {
                                            onTapColumnwelcomeback();
                                          },
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 20,
                                                  top: 127,
                                                  right: 20,
                                                  bottom: 127),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 88,
                                                            right: 86),
                                                        child: Text(
                                                            "lbl_welcome_back"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRubikMedium24)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 88,
                                                            top: 13,
                                                            right: 88),
                                                        child: Text(
                                                            "msg_your_care_await"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRubikRegular14)),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 104),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapGoogle();
                                                                      },
                                                                      child: Container(
                                                                          decoration: AppDecoration.outlineBlack9000f.copyWith(borderRadius: BorderRadiusStyle.circleBorder25),
                                                                          child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                            Padding(
                                                                                padding: getPadding(left: 40, top: 18, bottom: 17),
                                                                                child: CommonImageView(imagePath: ImageConstant.imgGroup18X18, height: getSize(18.00), width: getSize(18.00))),
                                                                            Padding(
                                                                                padding: getPadding(left: 12, top: 17, right: 40, bottom: 18),
                                                                                child: Text("lbl_google".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikLight16))
                                                                          ]))),
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapFacebook();
                                                                      },
                                                                      child: Container(
                                                                          decoration: AppDecoration.outlineBlack9000f.copyWith(borderRadius: BorderRadiusStyle.circleBorder25),
                                                                          child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                            Padding(
                                                                                padding: getPadding(left: 29, top: 18, bottom: 17),
                                                                                child: CommonImageView(imagePath: ImageConstant.imgGroupWhiteA700, height: getSize(18.00), width: getSize(18.00))),
                                                                            Padding(
                                                                                padding: getPadding(left: 16, top: 17, right: 28, bottom: 18),
                                                                                child: Text("lbl_facebook".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikLight16))
                                                                          ])))
                                                                ])))
                                                  ])))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: getVerticalSize(810.00),
                                          width: size.width,
                                          margin: getMargin(bottom: 1),
                                          child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgVerified,
                                                        height: getVerticalSize(
                                                            810.00),
                                                        width:
                                                            getHorizontalSize(
                                                                375.00))),
                                                Align(
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 19,
                                                            top: 54,
                                                            right: 19,
                                                            bottom: 54),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapRectangle539();
                                                                  },
                                                                  child: Container(
                                                                      height: getVerticalSize(
                                                                          5.00),
                                                                      width: getHorizontalSize(
                                                                          130.00),
                                                                      margin: getMargin(
                                                                          left:
                                                                              21,
                                                                          right:
                                                                              21),
                                                                      decoration: BoxDecoration(
                                                                          color: ColorConstant
                                                                              .gray400,
                                                                          borderRadius:
                                                                              BorderRadius.circular(getHorizontalSize(2.73))))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              60,
                                                                          right:
                                                                              10),
                                                                  child: Text(
                                                                      "lbl_forgot_password"
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
                                                                          287.00),
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              1,
                                                                          top:
                                                                              18,
                                                                          right:
                                                                              10),
                                                                  child: Text(
                                                                      "msg_enter_your_emai"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikRegular14)),
                                                              CustomTextFormField(
                                                                  width: 335,
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  controller:
                                                                      controller
                                                                          .emailController,
                                                                  hintText:
                                                                      "lbl_email"
                                                                          .tr,
                                                                  margin:
                                                                      getMargin(
                                                                          left:
                                                                              1,
                                                                          top:
                                                                              47),
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .done,
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  validator:
                                                                      (value) {
                                                                    if (value ==
                                                                            null ||
                                                                        (!isValidEmail(
                                                                            value,
                                                                            isRequired:
                                                                                true))) {
                                                                      return "Please enter valid email";
                                                                    }
                                                                    return null;
                                                                  }),
                                                              CustomButton(
                                                                  width: 295,
                                                                  text:
                                                                      "lbl_continue"
                                                                          .tr,
                                                                  margin: getMargin(
                                                                      left: 21,
                                                                      top: 32,
                                                                      right:
                                                                          20),
                                                                  shape: ButtonShape
                                                                      .RoundedBorder28,
                                                                  onTap:
                                                                      onTapBtnContinue,
                                                                  alignment:
                                                                      Alignment
                                                                          .center)
                                                            ])))
                                              ])))
                                ])))))));
  }

  onTapColumnwelcomeback() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapGoogle() async {
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

  onTapFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapRectangle539() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapBtnContinue() {
    Get.toNamed(AppRoutes.verifyEmailCodeScreen);
  }
}
