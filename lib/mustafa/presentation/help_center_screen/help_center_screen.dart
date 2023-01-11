import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/help_center_controller.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_icon_button.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HelpCenterScreen extends GetWidget<HelpCenterController> {
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
                                  height: 812.00.h,
                                  width: 375.00.w)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: size.width,
                                            margin: EdgeInsets.only(top: 36.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomIconButton(
                                                      height: 30.h,
                                                      width: 30.w,
                                                      margin: EdgeInsets.only(
                                                          left: 20.w),
                                                      onTap: () {
                                                        onTapBtntf();
                                                      },
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleftBluegray500)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 19.w,
                                                          top: 5.h,
                                                          bottom: 4.h),
                                                      child: Text(
                                                          "lbl_help_center2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikMedium18))
                                                ]))),
                                    CustomTextFormField(
                                        width: 335.w,
                                        focusNode: FocusNode(),
                                        controller: controller.searchController,
                                        hintText: "msg_i_have_an_issue".tr,
                                        margin: EdgeInsets.only(
                                            left: 19.w, top: 34.h, right: 19.w),
                                        variant: TextFormFieldVariant
                                            .OutlineBlack9000c,
                                        shape:
                                            TextFormFieldShape.RoundedBorder6,
                                        fontStyle:
                                            TextFormFieldFontStyle.RubikLight18,
                                        textInputAction: TextInputAction.done),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 19.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("msg_booking_a_new_a".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight18),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 4.h, bottom: 4.w),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 12.00.h,
                                                      width: 7.00.w))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 35.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("msg_existing_appoin".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight18),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 4.h, bottom: 4.w),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 12.00.h,
                                                      width: 7.00.w))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 35.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("msg_online_consulta".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight18),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 4.h, bottom: 4.h),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 12.00.h,
                                                      width: 7.0.w))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 35.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("lbl_feedbacks".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight18),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 4.h, bottom: 4.h),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 12.00.h,
                                                      width: 7.00.w))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 35.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("lbl_medicine_orders2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight18),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 4.h, bottom: 4.h),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 12.00.h,
                                                      width: 7.00.w))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 35.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("msg_diagnostic_test".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight18),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 4.h, bottom: 4.h),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 12.00.h,
                                                      width: 7.00.w))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 35.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("lbl_health_plans".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight18),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 4.h, bottom: 4.w),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 12.00.h,
                                                      width: 7.00.w))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 35.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("msg_my_account_and".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight18),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 4.h, bottom: 4.h),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 12.00.h,
                                                      width: 7.00.h))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 35.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("msg_have_a_feature".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight18),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 4.h, bottom: 4.h),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 12.00.h,
                                                      width: 7.00.w))
                                            ])),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w,
                                            top: 35.h,
                                            right: 19.w,
                                            bottom: 114.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text("lbl_other_issues".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight18),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: 12.00.h,
                                                      width: 7.00.w))
                                            ]))
                                  ]))
                        ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
