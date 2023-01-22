import '../../widgets/app_bar/appbar_stack.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/sign_up_controller.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/core/utils/validation_functions.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_button.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/domain/googleauth/google_auth_helper.dart';
import 'package:final_grad_proj/wajeed2/domain/facebookauth/facebook_auth_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {


  SignUpController controller = SignUpController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int gvalue = 0;
  static String Email = "";
  static int Page = 0;
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
                                      child: Expanded(
                                        child: CommonImageView(
                                            imagePath: ImageConstant.Background,
                                            height: 812.h,
                                            width: 375.w),
                                      )),
                                  CustomAppBar(
                                      height: (56.h),
                                      leadingWidth: 50.w,
                                      leading: AppbarStack(
                                          margin: EdgeInsets.only(
                                              left: 20.w, top: 20.h),
                                          onTap: onTapStackarrowleft)),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            // CustomAppBar(
                                            //     height: (56.h),
                                            //     leadingWidth: 50.w,
                                            //     leading: AppbarStack(
                                            //         margin: EdgeInsets.only(left: 20.w),
                                            //         onTap: onTapStackarrowleft)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20.w,
                                                    top: 60.h,
                                                    right: 20.w),
                                                child: Text(
                                                    "msg_join_us_to_star".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikMedium24)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20.w,
                                                    top: 20.h,
                                                    right: 20.w),
                                                child: Text(
                                                    "msg_you_can_search".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikRegular14)),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 20.w,
                                                    top: 30.h,
                                                    right: 20.w),
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
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          10),
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
                                                                          25.00),
                                                                  width: getSize(
                                                                      25.00))),
                                                          onTap: onTapBtnGoogle),
                                                      CustomButton(
                                                          width: 160,
                                                          text: "lbl_facebook"
                                                              .tr,
                                                          variant: ButtonVariant
                                                              .OutlineBlack9000f,
                                                          shape: ButtonShape
                                                              .CircleBorder25,
                                                          fontStyle:
                                                              ButtonFontStyle
                                                                  .RubikLight16,
                                                          prefixWidget: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          10),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgGroupWhiteA700,
                                                                  height:
                                                                      getSize(
                                                                          25.00),
                                                                  width: getSize(
                                                                      25.00))),
                                                          onTap:
                                                              onTapBtnFacebook)
                                                    ])),
                                            Expanded(
                                              child: CustomTextFormField(
                                                  width: 335,
                                                  focusNode: FocusNode(),
                                                  controller:
                                                      controller.nameController,
                                                  hintText: "lbl_name".tr,
                                                  margin: EdgeInsets.only(
                                                      left: 20.w,
                                                      top: 20.h,
                                                      right: 20.w),
                                                  validator: (value) {
                                                    if (!isText(value)) {
                                                      return "Please enter valid Name";
                                                    }
                                                    return null;
                                                  }),
                                            ),
                                            Expanded(
                                              child: CustomTextFormField(
                                                  width: 335,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .emailController,
                                                  hintText: "lbl_email".tr,
                                                  margin: EdgeInsets.only(
                                                      left: 20.w,
                                                      top: 20.h,
                                                      right: 20.w),
                                                  validator: (value) {
                                                    Email = value.toString();
                                                    if (!isValidEmail(value)) {
                                                      return "Please enter valid email";
                                                    }
                                                    return null;
                                                  }),
                                            ),
                                            Expanded(
                                              child: CustomTextFormField(
                                                  width: 335.w,
                                                  focusNode: FocusNode(),
                                                  controller: controller
                                                      .phoneController,
                                                  hintText: "lbl_phone".tr,
                                                  margin: EdgeInsets.only(
                                                      left: 20.w,
                                                      top: 20.h,
                                                      right: 20.w),
                                                  validator: (value) {
                                                    if (!isValidPhone(value)) {
                                                      return "Please enter valid phone number";
                                                    }
                                                    return null;
                                                  }),
                                            ),
                                            Obx(() => Expanded(
                                                  child: CustomTextFormField(
                                                      width: 335.w,
                                                      focusNode: FocusNode(),
                                                      controller: controller
                                                          .passwordController,
                                                      hintText:
                                                          "lbl_password".tr,
                                                      margin: EdgeInsets.only(
                                                          left: 20.w,
                                                          top: 20.h,
                                                          right: 20.w),
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      suffix: InkWell(
                                                          onTap: () {
                                                            controller
                                                                    .isShowPassword
                                                                    .value =
                                                                !controller
                                                                    .isShowPassword
                                                                    .value;
                                                          },
                                                          child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                left: 20.w,
                                                                top: 5.h,
                                                                right: 20.w,
                                                              ),
                                                              child: Icon(
                                                                controller
                                                                        .isShowPassword
                                                                        .value
                                                                    ? Icons
                                                                        .visibility_outlined
                                                                    : Icons
                                                                        .visibility_off_outlined,
                                                              ))),
                                                      suffixConstraints:
                                                          BoxConstraints(
                                                              minWidth: (16.w),
                                                              minHeight:
                                                                  (14.h)),
                                                      validator: (value) {
                                                        if (value == "" ||
                                                            !isValidPassword(
                                                                value)) {
                                                          return "Please enter valid password";
                                                        }
                                                        return null;
                                                      },
                                                      isObscureText: !controller
                                                          .isShowPassword
                                                          .value),
                                                )),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20.w,
                                                        top: 19.h,
                                                        right: 20.w),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Expanded(
                                                              child: Container(
                                                                height: getSize(
                                                                    8.00),
                                                                width: getSize(
                                                                    8.00),
                                                                child: Radio(
                                                                  groupValue:
                                                                      gvalue,
                                                                  onChanged:
                                                                      (gvalue) {
                                                                    gvalue = 1;
                                                                  },
                                                                  value: gvalue,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 5.w,
                                                                      top: 1.h,
                                                                      bottom:
                                                                          1.h),
                                                              child: Text(
                                                                  "msg_i_agree_with_th"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtRubikRegular15))
                                                        ]))),
                                            CustomButton(
                                                width: 294,
                                                text: "lbl_sign_up".tr,
                                                margin: EdgeInsets.only(
                                                    left: 20.w,
                                                    top: 15.h,
                                                    right: 20.w),
                                                shape:
                                                    ButtonShape.RoundedBorder28,
                                                onTap: onTapBtnSignup),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtDonthaveana();
                                                },
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20.w,
                                                        top: 16.h,
                                                        right: 20.w,
                                                        bottom: 100.h),
                                                    child: Text(
                                                        "msg_have_an_account"
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

  onTapBtnSignup() {
    Page = 1; //userSpecialist
    Get.toNamed(AppRoutes.verifyOtpScreen);
  }

  onTapTxtDonthaveana() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapStackarrowleft() {
    Get.toNamed(AppRoutes.usersScreen);
  }
}
