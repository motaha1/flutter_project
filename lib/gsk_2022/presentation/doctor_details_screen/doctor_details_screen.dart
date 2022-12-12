import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/doctor_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/widgets/app_bar/appbar_stack.dart';
import 'package:final_grad_proj/gsk_2022/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/gsk_2022/widgets/custom_button.dart';
import 'package:final_grad_proj/gsk_2022/widgets/custom_text_form_field.dart';

class DoctorDetailsScreen extends GetWidget<DoctorDetailsController> {
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
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: CommonImageView(
                                imagePath: ImageConstant.imgBg,
                                height: (812.00.h),
                                width: (375.00.w))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomAppBar(
                                      height: (56.00.h),
                                      leadingWidth: 50.w,
                                      leading: AppbarStack(
                                          margin: EdgeInsets.only(left: 20.w)),
                                      title: Padding(
                                          padding: EdgeInsets.only(left: 19.w),
                                          child: Text("lbl_doctor_details".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRubikMedium18))),
                                  Container(
                                      //    color: Colors.black12,
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                          left: 20.w, top: 34.h, right: 20.w),
                                      decoration: AppDecoration
                                          .outlineBlack90014
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 19.w,
                                                    top: 18.h,
                                                    right: 6.w),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 14.h),
                                                          child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.00
                                                                              .r),
                                                              child: CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle506,
                                                                  height:
                                                                      87.00.h,
                                                                  width:
                                                                      (92.00.w),
                                                                  fit: BoxFit
                                                                      .cover))),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 7.h),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: (74.00.h),
                                                                        width: (206.00.w),
                                                                        child: Stack(alignment: Alignment.topRight, children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(
                                                                                  padding: EdgeInsets.only(top: 2.h),
                                                                                  child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    Padding(padding: EdgeInsets.only(right: 10.w), child: Text("msg_dr_pediatricia".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikMedium18)),
                                                                                    Container(
                                                                                        margin: getMargin(top: 5),
                                                                                        child: RichText(
                                                                                            text: TextSpan(children: [
                                                                                              TextSpan(text: "lbl_specialist".tr, style: TextStyle(color: ColorConstant.bluegray500, fontSize: (14.sp), fontFamily: 'Rubik', fontWeight: FontWeight.w300)),
                                                                                              // TextSpan(text: "msg_cardiovascular".tr, style: TextStyle(color: ColorConstant.bluegray500, fontSize:(14.sp), fontFamily: 'Rubik', fontWeight: FontWeight.w400)),
                                                                                              //TextSpan(text: " ", style: TextStyle(color: ColorConstant.bluegray500, fontSize: (14.sp), fontFamily: 'Rubik', fontWeight: FontWeight.w300))
                                                                                            ]),
                                                                                            textAlign: TextAlign.left)),
                                                                                    Align(
                                                                                        alignment: Alignment.center,
                                                                                        child: Container(
                                                                                            width: (203.00.w),
                                                                                            margin: EdgeInsets.only(top: 9.h, right: 3.w),
                                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [
                                                                                              Padding(padding: EdgeInsets.only(top: 3.h, bottom: 4.h), child: CommonImageView(svgPath: ImageConstant.imgStar, height: (12.00.h), width: (83.00.w))),
                                                                                              Container(
                                                                                                  child: RichText(
                                                                                                      text: TextSpan(children: [
                                                                                                        TextSpan(text: "lbl".tr, style: TextStyle(color: ColorConstant.indigoA400, fontSize: (16.sp), fontFamily: 'Rubik', fontWeight: FontWeight.w500)),
                                                                                                        TextSpan(text: " ", style: TextStyle(color: ColorConstant.bluegray900, fontSize: (16.sp), fontFamily: 'Rubik', fontWeight: FontWeight.w500)),
                                                                                                        TextSpan(text: "lbl_28_00_hr2".tr, style: TextStyle(color: ColorConstant.bluegray500E5, fontSize: (16.sp), fontFamily: 'Rubik', fontWeight: FontWeight.w300))
                                                                                                      ]),
                                                                                                      textAlign: TextAlign.left))
                                                                                            ])))
                                                                                  ]))),
                                                                          Align(
                                                                              alignment: Alignment.topRight,
                                                                              child: Padding(padding: EdgeInsets.only(left: 10.w, right: 6.w, bottom: 10.h), child: CommonImageView(svgPath: ImageConstant.imgFavorite, height: (17.00.h), width: (19.00.w))))
                                                                        ]))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerRight,
                                                                    child: Padding(
                                                                        padding: EdgeInsets.only(
                                                                            left: 22
                                                                                .w,
                                                                            top: 5
                                                                                .h,
                                                                            right: 22
                                                                                .w),
                                                                        child: Text(
                                                                            "lbl_available"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtRubikMedium13)))
                                                              ]))
                                                    ])),
                                            CustomButton(
                                                width: 140.w,
                                                text: "msg_appointment_no".tr,
                                                margin: EdgeInsets.only(
                                                    left: 19.w,
                                                    top: 1.h,
                                                    right: 19.w,
                                                    bottom: 18.h),
                                                shape:
                                                    ButtonShape.RoundedBorder4,
                                                padding:
                                                    ButtonPadding.PaddingAll7,
                                                fontStyle: ButtonFontStyle
                                                    .RubikMedium14,
                                                onTap: onTapAppointmentnowOne)
                                          ])),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 20.w, top: 24.h, right: 20.w),
                                      decoration: AppDecoration
                                          .outlineBlack90014
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                                margin: EdgeInsets.only(
                                                    left: 17.w,
                                                    top: 10.h,
                                                    bottom: 10.h),
                                                decoration: AppDecoration
                                                    .gradientWhiteA70099IndigoA40099
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 32.w,
                                                                  top: 10.h,
                                                                  right: 32.w),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgUser,
                                                              height: (24.00.h),
                                                              width:
                                                                  (24.00.h))),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 32.w,
                                                                  top: 2.h,
                                                                  right: 32.w,
                                                                  bottom: 10.h),
                                                          child: Text(
                                                              "lbl_message".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRubikLight14))
                                                    ])),
                                            Container(
                                                margin: EdgeInsets.only(
                                                    top: 10.h,
                                                    right: 17.w,
                                                    bottom: 10.h),
                                                decoration: AppDecoration
                                                    .gradientIndigoA40099WhiteA70099
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder10),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15.w,
                                                                  top: 10.h,
                                                                  right: 15.w),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCall,
                                                              height: (24.00.h),
                                                              width:
                                                                  (24.00.w))),
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15.w,
                                                                  top: 4.h,
                                                                  right: 15.w,
                                                                  bottom: 10.h),
                                                          child: Text(
                                                              "lbl_97059xxxxxxx"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRubikLight13))
                                                    ]))
                                          ])),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 23.w,
                                              top: 24.h,
                                              right: 23.w),
                                          child: Text("lbl_services".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRubikMedium18))),
                                  CustomTextFormField(
                                      width: 335,
                                      focusNode: FocusNode(),
                                      controller:
                                          controller.languageTwoController,
                                      hintText: "msg_1_provide_ap".tr,
                                      margin: EdgeInsets.only(
                                          left: 20.w, top: 17.h, right: 16.w)),
                                  CustomTextFormField(
                                      width: 335.w,
                                      focusNode: FocusNode(),
                                      controller:
                                          controller.languageThreeController,
                                      hintText: "msg_2_provides_ca".tr,
                                      margin: EdgeInsets.only(
                                          left: 20.w, top: 16.h, right: 16.w),
                                      textInputAction: TextInputAction.done),
                                  Container(
                                      margin: EdgeInsets.only(
                                          left: 20.w, top: 16.h, right: 20.w),
                                      child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "lbl_3".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .indigoA400,
                                                    fontSize: (13.sp),
                                                    fontFamily: 'Rubik',
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            TextSpan(
                                                text: "   ".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray500E5,
                                                    fontSize: (13.sp),
                                                    fontFamily: 'Rubik',
                                                    fontWeight:
                                                        FontWeight.w300)),
                                            TextSpan(
                                                text: "msg_holds_high_cert".tr,
                                                style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray500E5,
                                                    fontSize: (13.sp),
                                                    fontFamily: 'Rubik',
                                                    fontWeight:
                                                        FontWeight.w400))
                                          ]),
                                          textAlign: TextAlign.left)),
                                  Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.only(
                                          left: 20.w,
                                          top: 36.h,
                                          right: 20.w,
                                          bottom: 18.h),
                                      color: ColorConstant.whiteA700,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder10),
                                      child: Container(
                                          height: (210.00.h),
                                          width: (335.00.w),
                                          decoration: AppDecoration
                                              .outlineBlack900141
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder10),
                                          child: Stack(
                                              alignment: Alignment.topCenter,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 8.w,
                                                                top: 10.h,
                                                                right: 9.w,
                                                                bottom: 9.h),
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    (10.00.r)),
                                                            child: CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgRectangle523,
                                                                height:
                                                                    (190.00.h),
                                                                width:
                                                                    (318.00.w),
                                                                fit: BoxFit
                                                                    .cover)))),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 121.w,
                                                                top: 37.h,
                                                                right: 121.w,
                                                                bottom: 37.h),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  child: Padding(
                                                                      padding: getPadding(
                                                                          left:
                                                                              17,
                                                                          right:
                                                                              17),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgLocation,
                                                                          height: getVerticalSize(
                                                                              14.00),
                                                                          width:
                                                                              getHorizontalSize(9.00)))),
                                                              Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  child: Container(
                                                                      height: getVerticalSize(42.00),
                                                                      width: getHorizontalSize(85.00),
                                                                      margin: getMargin(top: 26),
                                                                      child: Stack(alignment: Alignment.centerRight, children: [
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            child: Padding(padding: getPadding(right: 10), child: CommonImageView(svgPath: ImageConstant.imgMenu, height: getVerticalSize(42.00), width: getHorizontalSize(70.00)))),
                                                                        Align(
                                                                            alignment:
                                                                                Alignment.centerRight,
                                                                            child: Padding(padding: getPadding(left: 10, top: 12, bottom: 12), child: Text("lbl_location".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikRegular14)))
                                                                      ])))
                                                            ])))
                                              ])))
                                ]))
                      ]))))),
    );
  }

  onTapAppointmentnowOne() {
    Get.toNamed(AppRoutes.doctorAppointmentScreen);
  }
}
