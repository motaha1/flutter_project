import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/privacy_policy_controller.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends GetWidget<PrivacyPolicyController> {
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
                              alignment: Alignment.topLeft,
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgBg,
                                  height: 200.00,
                                  width: 400.00.w)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: size.width,
                                            margin:
                                                EdgeInsets.only(bottom: 10.h),
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
                                                          "lbl_privacy_policy"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikMedium18))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.w,
                                                top: 28.h,
                                                right: 20.w),
                                            child: Text(
                                                "msg_ask_for_care_ap".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtRubikBold18))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: 330.00.w,
                                            margin: EdgeInsets.only(
                                                left: 20.w,
                                                top: 17.h,
                                                right: 30.w),
                                            child: Text("msg_there_are_many".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRegular14Bluegray300cc))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 30.w,
                                                top: 21.h,
                                                right: 19.w),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 5.h,
                                                          bottom: 45.h),
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
                                                            Container(
                                                                height: 8.00.h,
                                                                width: 8.00.w,
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .indigoA400,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.00.r))),
                                                            Container(
                                                                height: 8.00.h,
                                                                width: 8.00.w,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 62
                                                                            .h),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .indigoA400,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.00.r))),
                                                            Container(
                                                                height: 8.00.h,
                                                                width: 8.00.w,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 45
                                                                            .h),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .indigoA400,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.00.r))),
                                                            Container(
                                                                height: 8.00.h,
                                                                width: 8.00.w,
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        top: 45
                                                                            .h),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .indigoA400,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.00.r)))
                                                          ])),
                                                  Container(
                                                      width: 290.00.w,
                                                      margin: EdgeInsets.only(
                                                          left: 8.w),
                                                      child: Text(
                                                          "msg_the_standard_ch"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikRegular14Bluegray300cc))
                                                ]))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: 330.00.w,
                                            margin: EdgeInsets.only(
                                                left: 20.w,
                                                top: 10.h,
                                                right: 30.w,
                                                bottom: 50.h),
                                            child: Text(
                                                "msg_it_is_a_long_es".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRegular14Bluegray300cc)))
                                  ]))
                        ]))))));
  }

  onTapBtntf() {
    Get.toNamed(AppRoutes.menuScreen);
  }
}
