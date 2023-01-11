import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../profile_screen/widgets/profile_screen_item_widget.dart';
import 'controller/profile_controller.dart';
import 'models/profile_screen_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_button.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String Name = "First Name & Last Name";
  String Cotact_Num = "+009705XXXXXXXX";
  String Email = "First Name.Last Name@gmail.com";
  String Date_of_birth = "DD MM YYYY";
  String Location = "Add Details";
  String Gender = "Mail..";
  String Patient_History = "Heart";
  String Blood_Group = "O+-";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray51,
            body: Container(
              width: size.width,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        width: double.infinity,
                        decoration: AppDecoration.fillIndigoA400.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      margin: EdgeInsets.only(top: 36.h),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 20.w, right: 248.w),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomIconButton(
                                                    height: 30.h,
                                                    width: 30.h,
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
                                                        "lbl_profile".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikBold18WhiteA700))
                                              ])))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 33.w, top: 34.h, right: 33.w),
                                  child: Text("Set up your profile".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRubikMedium16WhiteA700)),
                              Container(
                                  width: 315.00.w,
                                  margin: EdgeInsets.only(
                                      left: 33.w, top: 15.h, right: 26.w),
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "Update your profile to connect your Specialist with better impression"
                                                    .tr,
                                            style: TextStyle(
                                                color: ColorConstant.whiteA700,
                                                fontSize: 14.sp,
                                                fontFamily: 'Rubik',
                                                fontWeight: FontWeight.w400)),
                                      ]),
                                      textAlign: TextAlign.center)),
                              Container(
                                  height: 150.00.h,
                                  width: 150.00.w,
                                  margin: EdgeInsets.only(
                                      left: 10.w,
                                      top: 26.h,
                                      right: 10.w,
                                      bottom: 30.h),
                                  child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    right: 10.w),
                                                child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.00.r),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse164,
                                                        height: 150.00.h,
                                                        width: 150.00.w,
                                                        fit: BoxFit.cover)))),
                                        CustomIconButton(
                                            height: 36.h,
                                            width: 36.w,
                                            margin: EdgeInsets.only(
                                                left: 10.w,
                                                top: 13.h,
                                                bottom: 13.h),
                                            variant: IconButtonVariant
                                                .FillBluegray500cc,
                                            shape:
                                                IconButtonShape.CircleBorder16,
                                            alignment: Alignment.bottomRight,
                                            onTap: () {
                                              onTapBtntf1();
                                            },
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgCamera))
                                      ]))
                            ])),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 15.h),
                      decoration: AppDecoration.fillGray51,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.w, right: 20.w),
                                    child: Text("msg_personal_inform".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRubikMedium18))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: 230.00.h,
                                    width: size.width.w,
                                    margin: EdgeInsets.only(top: 10.h),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          SingleChildScrollView(
                                              scrollDirection: Axis.vertical,
                                              child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 0.w,
                                                      top: 5.h,
                                                      right: 5.w),
                                                  child: Column(children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 20.w,
                                                                right: 20.w,
                                                                bottom: 0.h),
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
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          6.0.h,
                                                                      bottom:
                                                                          6.0.h),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          20.w,
                                                                      top: 9.h,
                                                                      right:
                                                                          20.w,
                                                                    ),
                                                                    child: Text(
                                                                      "Name".tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikMedium10,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: 20
                                                                            .w,
                                                                        top:
                                                                            0.h,
                                                                        right:
                                                                            10.w,
                                                                        bottom:
                                                                            0.h,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                              top: 5.h,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              Name.tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikLight16,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(
                                                                                bottom: 9.h,
                                                                              ),
                                                                              child: IconButton(
                                                                                onPressed: () {
                                                                                  press(1);
                                                                                },
                                                                                icon: Icon(Icons.edit, size: 20, color: Colors.grey),
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          6.0.h,
                                                                      bottom:
                                                                          6.0.h),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          20.w,
                                                                      top: 9.h,
                                                                      right:
                                                                          20.w,
                                                                    ),
                                                                    child: Text(
                                                                      "Cotact Number"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikMedium10,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: 20
                                                                            .w,
                                                                        top:
                                                                            0.h,
                                                                        right:
                                                                            10.w,
                                                                        bottom:
                                                                            0.h,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                              top: 5.h,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              Cotact_Num.tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikLight16,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(
                                                                                bottom: 9.h,
                                                                              ),
                                                                              child: IconButton(
                                                                                onPressed: () {
                                                                                  press(2);
                                                                                },
                                                                                icon: Icon(Icons.edit, size: 20, color: Colors.grey),
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          6.0.h,
                                                                      bottom:
                                                                          6.0.h),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          20.w,
                                                                      top: 9.h,
                                                                      right:
                                                                          20.w,
                                                                    ),
                                                                    child: Text(
                                                                      "Email"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikMedium10,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: 20
                                                                            .w,
                                                                        top:
                                                                            0.h,
                                                                        right:
                                                                            10.w,
                                                                        bottom:
                                                                            0.h,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                              top: 5.h,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              Email.tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikLight16,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(
                                                                                bottom: 9.h,
                                                                              ),
                                                                              child: IconButton(
                                                                                onPressed: () {
                                                                                  press(3);
                                                                                },
                                                                                icon: Icon(Icons.edit, size: 20, color: Colors.grey),
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          6.0.h,
                                                                      bottom:
                                                                          6.0.h),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          20.w,
                                                                      top: 9.h,
                                                                      right:
                                                                          20.w,
                                                                    ),
                                                                    child: Text(
                                                                      "Date of birth"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikMedium10,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: 20
                                                                            .w,
                                                                        top:
                                                                            0.h,
                                                                        right:
                                                                            10.w,
                                                                        bottom:
                                                                            0.h,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                              top: 5.h,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              Date_of_birth.tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikLight16,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(
                                                                                bottom: 9.h,
                                                                              ),
                                                                              child: IconButton(
                                                                                onPressed: () {
                                                                                  press(4);
                                                                                },
                                                                                icon: Icon(Icons.edit, size: 20, color: Colors.grey),
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          6.0.h,
                                                                      bottom:
                                                                          6.0.h),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          20.w,
                                                                      top: 9.h,
                                                                      right:
                                                                          20.w,
                                                                    ),
                                                                    child: Text(
                                                                      "Location"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikMedium10,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: 20
                                                                            .w,
                                                                        top:
                                                                            0.h,
                                                                        right:
                                                                            10.w,
                                                                        bottom:
                                                                            0.h,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                              top: 5.h,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              Location.tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikLight16,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(
                                                                                bottom: 9.h,
                                                                              ),
                                                                              child: IconButton(
                                                                                onPressed: () {
                                                                                  press(5);
                                                                                },
                                                                                icon: Icon(Icons.edit, size: 20, color: Colors.grey),
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          6.0.h,
                                                                      bottom:
                                                                          6.0.h),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          20.w,
                                                                      top: 9.h,
                                                                      right:
                                                                          20.w,
                                                                    ),
                                                                    child: Text(
                                                                      "Gender"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikMedium10,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: 20
                                                                            .w,
                                                                        top:
                                                                            0.h,
                                                                        right:
                                                                            10.w,
                                                                        bottom:
                                                                            0.h,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                              top: 5.h,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              Gender.tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikLight16,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(
                                                                                bottom: 9.h,
                                                                              ),
                                                                              child: IconButton(
                                                                                onPressed: () {
                                                                                  press(6);
                                                                                },
                                                                                icon: Icon(Icons.edit, size: 20, color: Colors.grey),
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          6.0.h,
                                                                      bottom:
                                                                          6.0.h),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          20.w,
                                                                      top: 9.h,
                                                                      right:
                                                                          20.w,
                                                                    ),
                                                                    child: Text(
                                                                      "Patient_History"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikMedium10,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: 20
                                                                            .w,
                                                                        top:
                                                                            0.h,
                                                                        right:
                                                                            10.w,
                                                                        bottom:
                                                                            0.h,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                              top: 5.h,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              Patient_History.tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikLight16,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(
                                                                                bottom: 9.h,
                                                                              ),
                                                                              child: IconButton(
                                                                                onPressed: () {
                                                                                  press(7);
                                                                                },
                                                                                icon: Icon(Icons.edit, size: 20, color: Colors.grey),
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top:
                                                                          6.0.h,
                                                                      bottom:
                                                                          6.0.h),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillWhiteA700
                                                                      .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      left:
                                                                          20.w,
                                                                      top: 9.h,
                                                                      right:
                                                                          20.w,
                                                                    ),
                                                                    child: Text(
                                                                      "Blood_Group"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtRubikMedium10,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        left: 20
                                                                            .w,
                                                                        top:
                                                                            0.h,
                                                                        right:
                                                                            10.w,
                                                                        bottom:
                                                                            0.h,
                                                                      ),
                                                                      child:
                                                                          Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.only(
                                                                              top: 5.h,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              Blood_Group.tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRubikLight16,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                              padding: EdgeInsets.only(
                                                                                bottom: 9.h,
                                                                              ),
                                                                              child: IconButton(
                                                                                onPressed: () {
                                                                                  press(8);
                                                                                },
                                                                                icon: Icon(Icons.edit, size: 20, color: Colors.grey),
                                                                              )),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ]))),
                                        ]))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    height: 90.00.h,
                                    width: size.width,
                                    padding: EdgeInsets.only(bottom: 15.h),
                                    child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomButton(
                                              onTap: () {
                                                update(
                                                    Name,
                                                    Cotact_Num,
                                                    Email,
                                                    Date_of_birth,
                                                    Location,
                                                    Gender,
                                                    Patient_History,
                                                    Blood_Group);
                                              },
                                              width: 262.w,
                                              text: "lbl_update".tr,
                                              margin: EdgeInsets.only(
                                                  left: 56.w,
                                                  top: 0.h,
                                                  right: 56.w,
                                                  bottom: 0.h),
                                              shape:
                                                  ButtonShape.RoundedBorder12,
                                              alignment: Alignment.bottomCenter)
                                        ]))),
                          ]),
                    ),
                  ]),
            )));
  }

  onTapBtntf() {
    Get.back();
  }

  update(
      String Name,
      String Cotact_Num,
      String Email,
      String Date_of_birth,
      String Location,
      String Gender,
      String Patient_History,
      String Blood_Group) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Done'),
            content: Text('update Your personal information successfully'),
          );
        });
  }

  press(int i) {
    showDialog(
        context: context,
        builder: (context) => SimpleDialog(
              children: [
                TextField(
                  onChanged: (value) {
                    setState(() {
                      switch (i) {
                        case 1:
                          Name = value;
                          break;
                        case 2:
                          Cotact_Num = value;
                          break;
                        case 3:
                          Email = value;
                          break;
                        case 4:
                          Gender = value;
                          break;
                        case 5:
                          Location = value;
                          break;
                        case 6:
                          Gender = value;
                          break;
                        case 7:
                          Patient_History = value;
                          break;
                        case 8:
                          Blood_Group = value;
                          break;

                        default:
                        // code block
                      }
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('update'),
                )
              ],
            ));
  }

  Date() async {
    DateTime? ff = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1990),
      lastDate: DateTime(2005),
    );
  }

  onTapBtntf1() async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }
}
