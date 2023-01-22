import 'controller/patient_details_screenone_controller.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/core/utils/validation_functions.dart';
import 'package:final_grad_proj/wajeed2/widgets/app_bar/appbar_stack.dart';
import 'package:final_grad_proj/wajeed2/widgets/app_bar/appbar_title.dart';
import 'package:final_grad_proj/wajeed2/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore_for_file: must_be_immutable
class PatientDetailsScreenoneScreen
    extends GetWidget<PatientDetailsScreenoneController> {
  //GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                    //    key: _formKey,
                       // autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: CommonImageView(
                                          imagePath: ImageConstant.Background,
                                          height: 812.h,
                                          width: 375.w)),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [

                                              CustomAppBar(
                                                    height: (56.h),
                                                    leadingWidth: 50.w,
                                                    leading: AppbarStack(
                                                        margin: EdgeInsets.only(
                                                            left: 20.w),
                                                             onTap: onTapReversetoUsers),
                                                    title: AppbarTitle(
                                                        text:
                                                            "lbl_patient_details"
                                                                .tr,
                                                        margin: EdgeInsets.only(
                                                            left: 19.w))),
                                            Container(
                                                margin: EdgeInsets.only(
                                                    left: 20.w,
                                                    top: 24.h,
                                                    right: 20.w),
                                                decoration: AppDecoration
                                                    .outlineBlack9000c
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 11,
                                                                  bottom: 6,
                                                                  right: 5,
                                                                  left: 20),
                                                          child: Text(
                                                              "Step 1/2".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRubikMedium14)),
                                                      Padding(
                                                          padding: EdgeInsets.only(
                                                              left: 14,
                                                              top: 18,
                                                              bottom: 13,
                                                              right: 20),
                                                          child: Container(
                                                              height: (5.h),
                                                              width: (180.w),
                                                              decoration: BoxDecoration(
                                                                  color: ColorConstant
                                                                      .indigoA4004c,
                                                                  borderRadius:
                                                                      BorderRadius.circular((5
                                                                          .r))),
                                                              child: ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius.circular((5
                                                                          .r)),
                                                                  child: LinearProgressIndicator(
                                                                      value:
                                                                          0.5,
                                                                      backgroundColor:
                                                                          ColorConstant
                                                                              .indigoA4004c,
                                                                      valueColor:
                                                                          AlwaysStoppedAnimation<Color>(ColorConstant.indigoA400)))))
                                                    ])),
                                            Container(
                                                width: double.infinity,
                                                margin: EdgeInsets.only(
                                                    left: 20.w,
                                                    top: 24.h,
                                                    right: 20.w),
                                                decoration: AppDecoration
                                                    .outlineBlack9000c
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 14.w,
                                                                  top: 27.h,
                                                                  right: 14.w),
                                                          child: Text(
                                                              "lbl_patient_s_name"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRubikMedium14)),
                                                      CustomTextFormField(
                                                          width: 305.w,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .nameController,
                                                          hintText:
                                                              "msg_wajeed_mabrouke"
                                                                  .tr,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 14.w,
                                                                  top: 7.h,
                                                                  right: 14.w),
                                                          alignment:
                                                              Alignment.center,
                                                          validator: (value) {
                                                            if (value == "") {
                                                              return "Please enter valid Name";
                                                            }
                                                            return null;
                                                          }),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 14.w,
                                                                  top: 32.h,
                                                                  right: 14.w),
                                                          child: Text(
                                                              "lbl_email".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRubikMedium14)),
                                                      CustomTextFormField(
                                                          width: 305.w,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .emailController,
                                                          hintText:
                                                              "msg_itsmemamun1_gma"
                                                                  .tr,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 14.w,
                                                                  top: 7.h,
                                                                  right: 14.w),
                                                          alignment:
                                                              Alignment.center,
                                                          validator: (value) {
                                                            if (value == "" ||
                                                                (!isValidEmail(
                                                                    value,
                                                                    isRequired:
                                                                        true))) {
                                                              return "Please enter valid email";
                                                            }
                                                            return null;
                                                          }),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 14.w,
                                                                  top: 32.h,
                                                                  right: 14.w),
                                                          child: Text(
                                                              "lbl_mobile_number"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRubikMedium14)),
                                                      CustomTextFormField(
                                                          width: 305.w,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .passwordController,
                                                          hintText:
                                                              "lbl_97059xxxxxxx"
                                                                  .tr,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 14.w,
                                                                  top: 7.h,
                                                                  right: 14.w),
                                                          alignment:
                                                              Alignment.center,
                                                          validator: (value) {
                                                            if (value == "") {
                                                              return "Please enter valid Phone";
                                                            }
                                                            return null;
                                                          }),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 14.w,
                                                                  top: 33.h,
                                                                  right: 14.w),
                                                          child: Text(
                                                              "lbl_password".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRubikMedium14)),
                                                      CustomTextFormField(
                                                          width: 305.w,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .numberController,
                                                          hintText:
                                                              "lbl_strong_password"
                                                                  .tr,
                                                          margin:
                                                              EdgeInsets.only(
                                                                  left: 14.w,
                                                                  top: 7.h,
                                                                  right: 14.w,
                                                                  bottom: 24.h),
                                                          textInputAction:
                                                              TextInputAction
                                                                  .done,
                                                          alignment:
                                                              Alignment.center,
                                                          validator: (value) {
                                                            if (value == "" ||
                                                                (!isValidPassword(
                                                                    value,
                                                                    isRequired:
                                                                        true))) {
                                                              return "Please enter valid password";
                                                            }
                                                            return null;
                                                          },
                                                          isObscureText: true)
                                                    ])),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapButton();
                                                },
                                                child: Container(
                                                    margin: EdgeInsets.only(
                                                        left: 20.w,
                                                        top: 25.h,
                                                        right: 20.w,
                                                        bottom: 50.h),
                                                    decoration: AppDecoration
                                                        .fillIndigoA400
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .circleBorder25),
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
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 10,
                                                                      bottom:
                                                                          10,
                                                                      right:
                                                                          120,
                                                                      left:
                                                                          120),
                                                              child: Text(
                                                                  "lbl_next".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtOverpassBold24WhiteA700)),
                                                        ])))
                                          ]))
                                ])))))));
  }

  onTapButton() {
    Get.toNamed(AppRoutes.patientDetailsScreentwoScreen);
  }

  onTapReversetoUsers()
  {
     Get.toNamed(AppRoutes.usersScreen);
  }
}
