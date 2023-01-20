import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/update_pass_controller.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/core/utils/validation_functions.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_button.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UpdatePassScreen extends GetWidget<UpdatePassController> {
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
                                                    height: 812.00.h,
                                                    width: 375.00.w)),
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 16.w,
                                                        top: 37.h,
                                                        right: 16.w,
                                                        bottom: 37.h),
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
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      right:
                                                                          10.w),
                                                              child: InkWell(
                                                                  onTap: () {
                                                                    onTapImgArrowleft();
                                                                  },
                                                                  child: CommonImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgArrowleft,
                                                                      height:
                                                                          14.00
                                                                              .h,
                                                                      width: 14.000
                                                                          .w))),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 2.w,
                                                                      top: 49.h,
                                                                      right:
                                                                          10.w),
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
                                                              width: 312.00.w,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 17.h,
                                                                      right: 10
                                                                          .w),
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
                                                                  width: 335.w,
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  controller:
                                                                      controller
                                                                          .passwordController,
                                                                  hintText:
                                                                      "lbl_new_password"
                                                                          .tr,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top: 27
                                                                              .h),
                                                                  suffix: InkWell(
                                                                      onTap: () {
                                                                        controller
                                                                            .isShowPassword
                                                                            .value = !controller.isShowPassword.value;
                                                                      },
                                                                      child: Container(
                                                                          margin: EdgeInsets.only(left: 30.w, top: 20.h, right: 24.w, bottom: 19.h),
                                                                          child: CommonImageView(
                                                                            svgPath: controller.isShowPassword.value
                                                                                ? ImageConstant.imgEye12X22
                                                                                : ImageConstant.imgEye,
                                                                            color:
                                                                                Colors.blueGrey,
                                                                          ))),
                                                                  suffixConstraints: BoxConstraints(minWidth: 16.00.w, minHeight: 14.00.h),
                                                              
                                                                  isObscureText: !controller.isShowPassword.value)),
                                                          Obx(() =>
                                                              CustomTextFormField(
                                                                  width: 335.w,
                                                                  focusNode:
                                                                      FocusNode(),
                                                                  controller:
                                                                      controller
                                                                          .passwordOneController,
                                                                  hintText:
                                                                      "msg_re_enter_passwo"
                                                                          .tr,
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          top: 16
                                                                              .h),
                                                                  textInputAction:
                                                                      TextInputAction
                                                                          .done,
                                                                  suffix: InkWell(
                                                                      onTap: () {
                                                                        controller
                                                                            .isShowPassword1
                                                                            .value = !controller.isShowPassword1.value;
                                                                      },
                                                                      child: Container(
                                                                          margin: EdgeInsets.only(left: 30.w, top: 20.h, right: 24.w, bottom: 20.h),
                                                                          child: CommonImageView(
                                                                            svgPath: controller.isShowPassword1.value
                                                                                ? ImageConstant.imgEye12X22
                                                                                : ImageConstant.imgEye,
                                                                            color:
                                                                                Colors.blueGrey,
                                                                          ))),
                                                                  suffixConstraints: BoxConstraints(minWidth: 16.00.w, minHeight: 14.00.h),
                                                             
                                                                  isObscureText: !controller.isShowPassword1.value)),
                                                          CustomButton(
                                                              width: 295.w,
                                                              text:
                                                                  "lbl_update_password"
                                                                      .tr,
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          20.w,
                                                                      top: 18.h,
                                                                      right:
                                                                          20.w),
                                                              shape: ButtonShape
                                                                  .RoundedBorder28,
                                                              padding: ButtonPadding
                                                                  .PaddingAll13,
                                                             onTap: ()async {
                                                               EasyLoading.show(status: 'جارري تغيير كلمة المرور') ;  
                                                               await Future.delayed(Duration(seconds: 1)) ; 
                                                               EasyLoading.showSuccess('تم التعديل بنجاح ') ;
                                                               EasyLoading.dismiss() ; 

                                                             },
                                                                
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
  
  }
}
