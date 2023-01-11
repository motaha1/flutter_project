import 'package:final_grad_proj/wajeed/widgets/custom_text_form_field.dart';
import 'package:flutter/services.dart';
import 'controller/verify_email_code_controller.dart';

import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/domain/googleauth/google_auth_helper.dart';
import 'package:final_grad_proj/wajeed/domain/facebookauth/facebook_auth_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:final_grad_proj/wajeed/core/utils/validation_functions.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyEmailCodeScreen extends GetWidget<VerifyEmailCodeController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String val = "";
  String nunber_Receipt = "";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
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
                                          padding: EdgeInsets.only(
                                              left: 20.w,
                                              top: 127.h,
                                              right: 20.w,
                                              bottom: 127.h),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 88.w,
                                                        right: 86.w),
                                                    child: Text(
                                                        "lbl_welcome_back".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikMedium24)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 88.w,
                                                        top: 13.h,
                                                        right: 88.w),
                                                    child: Text(
                                                        "msg_your_care_await"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikRegular14)),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 50.h),
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
                                                                  onTap: () {
                                                                    onTapGoogle();
                                                                  },
                                                                  child: Container(
                                                                      decoration: AppDecoration.outlineBlack9000f.copyWith(borderRadius: BorderRadiusStyle.circleBorder25),
                                                                      child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [
                                                                        Padding(
                                                                            padding: EdgeInsets.only(
                                                                                left: 40.w,
                                                                                top: 18.h,
                                                                                bottom: 17.h),
                                                                            child: CommonImageView(imagePath: ImageConstant.imgGroup18X18, height: getSize(18.00), width: getSize(18.00))),
                                                                        Padding(
                                                                            padding: EdgeInsets.only(
                                                                                left: 12.w,
                                                                                top: 17.h,
                                                                                right: 40.w,
                                                                                bottom: 18.h),
                                                                            child: Text("lbl_google".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikLight16))
                                                                      ]))),
                                                              GestureDetector(
                                                                  onTap: () {
                                                                    onTapFacebook();
                                                                  },
                                                                  child:
                                                                      Container(
                                                                          decoration: AppDecoration.outlineBlack9000f.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .circleBorder25),
                                                                          child: Row(
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Padding(padding: EdgeInsets.only(left: 29.w, top: 18.h, bottom: 17.h), child: CommonImageView(imagePath: ImageConstant.imgGroupWhiteA700, height: getSize(18.00), width: getSize(18.00))),
                                                                                Padding(padding: EdgeInsets.only(left: 16.w, top: 17.h, right: 28.w, bottom: 18.h), child: Text("lbl_facebook".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikLight16))
                                                                              ])))
                                                            ])))
                                              ])))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(1500.h),
                                      width: size.width,
                                      margin: EdgeInsets.only(bottom: 20.h),
                                      child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            Align(
                                                alignment: Alignment.topLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 20.h),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgRectangle43,
                                                        height: getVerticalSize(
                                                            736.00),
                                                        width:
                                                            getHorizontalSize(
                                                                375.00)))),
                                            Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        top: 10),
                                                    decoration: AppDecoration
                                                        .fillWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .customBorderTL30),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          GestureDetector(
                                                              onTap: () {
                                                                onTapRectangle540();
                                                              },
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          5.00),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          130.00),
                                                                  margin: EdgeInsets.only(
                                                                      left:
                                                                          19.w,
                                                                      top: 21.h,
                                                                      right:
                                                                          19.w),
                                                                  decoration: BoxDecoration(
                                                                      color: ColorConstant
                                                                          .gray400,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(2.71))))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                  padding: EdgeInsets.only(
                                                                      left:
                                                                          35.w,
                                                                      top: 59.h,
                                                                      right:
                                                                          19.w),
                                                                  child: Text(
                                                                      "msg_enter_4_digits"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikMedium24))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          287.00),
                                                                  margin: EdgeInsets.only(
                                                                      left:
                                                                          35.w,
                                                                      top: 17.h,
                                                                      right:
                                                                          20.w),
                                                                  child: Text(
                                                                      "msg_enter_the_4_dig"
                                                                          .tr,
                                                                      maxLines:
                                                                          null,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikRegular14))),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                width:
                                                                    size.width,
                                                                height: 100.h,
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 24
                                                                            .w,
                                                                        top: 40
                                                                            .h,
                                                                        right: 15
                                                                            .w),
                                                                child:
                                                                    PinCodeTextField(
                                                                  appContext:
                                                                      context,
                                                                  length: 4,
                                                                  obscureText:
                                                                      false,
                                                                  obscuringCharacter:
                                                                      '*',
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .number,
                                                                  autoDismissKeyboard:
                                                                      true,
                                                                  enableActiveFill:
                                                                      false,
                                                                  inputFormatters: [
                                                                    FilteringTextInputFormatter
                                                                        .singleLineFormatter
                                                                  ],
                                                                  onChanged:
                                                                      (value) {
                                                                    print(
                                                                        value);
                                                                  },
                                                                  pinTheme:
                                                                      PinTheme(
                                                                    fieldWidth:
                                                                        getHorizontalSize(
                                                                            40.00),
                                                                    shape: PinCodeFieldShape
                                                                        .underline,
                                                                    selectedFillColor:
                                                                        ColorConstant
                                                                            .bluegray90019,
                                                                    activeFillColor:
                                                                        ColorConstant
                                                                            .bluegray90019,
                                                                    inactiveFillColor:
                                                                        ColorConstant
                                                                            .bluegray90019,
                                                                  ),
                                                                  onCompleted:
                                                                      (value) {
                                                                    nunber_Receipt =
                                                                        value
                                                                            .toString();
                                                                    onTapBtnContinue();
                                                                  },
                                                                ),
                                                              )),
                                                          CustomButton(
                                                              width: 110.w,
                                                              text:
                                                                  "lbl_continue"
                                                                      .tr,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          20.w,
                                                                      top: 25.h,
                                                                      right:
                                                                          20.w),
                                                              shape: ButtonShape
                                                                  .RoundedBorder28,
                                                              onTap:
                                                                  onTapBtnContinue,
                                                              alignment: Alignment
                                                                  .topCenter),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child:
                                                                  GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        onTapTxtResendcode();
                                                                      },
                                                                      child: Padding(
                                                                          padding: EdgeInsets.only(
                                                                              left: 20
                                                                                  .w,
                                                                              top: 14
                                                                                  .h,
                                                                              right: 19
                                                                                  .w,
                                                                              bottom: 10
                                                                                  .h),
                                                                          child: Text(
                                                                              "lbl_resend_code".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtOverpassRegular14IndigoA400.copyWith(height: 1.00)))))
                                                        ])))
                                          ])))
                            ]))))));
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

  onTapRectangle540() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapBtnContinue() {
    if (nunber_Receipt == "") {
      Get.snackbar('Error', "Please retry,Number has not been entered yet ");
    } else if (nunber_Receipt == "2222") {
      Get.toNamed(AppRoutes.resetPScreen);
    } else {
      Get.snackbar(
          'Error',
          "Please retry, the Number you entered "
              """ "$nunber_Receipt" """
              " is incorrect");
    }
  }

  onTapTxtResendcode() {
    Get.toNamed(AppRoutes.forgotPScreen);
  }
}
