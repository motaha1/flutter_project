import 'controller/thank_you_controller.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/appbar_stack.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/appbar_title.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/custom_button.dart';

class ThankYouScreen extends GetWidget<ThankYouController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 50,
          leading: AppbarStack(
            margin: getMargin(
              left: 20,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_appointment".tr,
            margin: getMargin(
              left: 19,
            ),
          ),
        ),
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              height: getVerticalSize(
                785.00,
              ),
              width: size.width,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: getPadding(
                        right: 10,
                        bottom: 10,
                      ),
                      child: CommonImageView(
                        imagePath: ImageConstant.imgEllipse142156x143,
                        height: getVerticalSize(
                          156.00,
                        ),
                        width: getHorizontalSize(
                          143.00,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: getMargin(
                        top: 10,
                      ),
                      decoration: AppDecoration.outlineBlack9000f.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL45,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 35,
                              right: 20,
                            ),
                            child: Text(
                              "lbl_available_time".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRubikMedium16,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                                top: 27,
                                right: 19,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration:
                                        AppDecoration.fillTealA70014.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            33.00,
                                          ),
                                          margin: getMargin(
                                            left: 14,
                                            top: 17,
                                            right: 13,
                                            bottom: 13,
                                          ),
                                          child: Text(
                                            "lbl_10_00_am".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRubikRegular13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    decoration:
                                        AppDecoration.fillTealA70014.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            32.00,
                                          ),
                                          margin: getMargin(
                                            left: 14,
                                            top: 17,
                                            right: 14,
                                            bottom: 13,
                                          ),
                                          child: Text(
                                            "lbl_12_00_am".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRubikRegular13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    decoration:
                                        AppDecoration.fillTealA702.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            39.00,
                                          ),
                                          margin: getMargin(
                                            left: 11,
                                            top: 15,
                                            right: 10,
                                            bottom: 11,
                                          ),
                                          child: Text(
                                            "lbl_02_00_pm".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRubikMedium14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    decoration:
                                        AppDecoration.fillTealA70014.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            35.00,
                                          ),
                                          margin: getMargin(
                                            left: 13,
                                            top: 17,
                                            right: 12,
                                            bottom: 13,
                                          ),
                                          child: Text(
                                            "lbl_03_00_pm".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRubikRegular13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    decoration:
                                        AppDecoration.fillTealA70014.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            35.00,
                                          ),
                                          margin: getMargin(
                                            left: 13,
                                            top: 17,
                                            right: 12,
                                            bottom: 13,
                                          ),
                                          child: Text(
                                            "lbl_04_00_pm".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRubikRegular13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 38,
                              right: 20,
                            ),
                            child: Text(
                              "msg_reminder_me_bef".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRubikMedium16,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                                top: 27,
                                right: 19,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    decoration:
                                        AppDecoration.fillTealA70014.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            29.00,
                                          ),
                                          margin: getMargin(
                                            left: 16,
                                            top: 16,
                                            right: 15,
                                            bottom: 14,
                                          ),
                                          child: Text(
                                            "lbl_30_minit".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRubikRegular13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    decoration:
                                        AppDecoration.fillTealA70014.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            29.00,
                                          ),
                                          margin: getMargin(
                                            left: 16,
                                            top: 16,
                                            right: 15,
                                            bottom: 14,
                                          ),
                                          child: Text(
                                            "lbl_40_minit".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRubikRegular13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    decoration:
                                        AppDecoration.fillTealA702.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            33.00,
                                          ),
                                          margin: getMargin(
                                            left: 14,
                                            top: 15,
                                            right: 13,
                                            bottom: 11,
                                          ),
                                          child: Text(
                                            "lbl_25_minit".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRubikMedium14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    decoration:
                                        AppDecoration.fillTealA70014.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getSize(
                                            30.00,
                                          ),
                                          margin: getMargin(
                                            left: 15,
                                            top: 16,
                                            right: 15,
                                            bottom: 14,
                                          ),
                                          child: Text(
                                            "lbl_10_minit".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRubikMedium13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    decoration:
                                        AppDecoration.fillTealA70014.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder30,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            29.00,
                                          ),
                                          margin: getMargin(
                                            left: 16,
                                            top: 15,
                                            right: 15,
                                            bottom: 15,
                                          ),
                                          child: Text(
                                            "lbl_35_minit".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle.txtRubikRegular13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomButton(
                            width: 295,
                            text: "lbl_confirm".tr,
                            margin: getMargin(
                              left: 20,
                              top: 20,
                              right: 20,
                              bottom: 5,
                            ),
                            variant: ButtonVariant.FillTealA702,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: getVerticalSize(
                        280.00,
                      ),
                      width: getHorizontalSize(
                        339.00,
                      ),
                      margin: getMargin(
                        left: 16,
                        top: 68,
                        right: 16,
                        bottom: 68,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 4,
                              ),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder10,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      decoration:
                                          AppDecoration.fillTealA702.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL8,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              left: 12,
                                              top: 17,
                                              bottom: 16,
                                            ),
                                            child: Text(
                                              "lbl_february_2021".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtRubikMedium16WhiteA700,
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 21,
                                              right: 10,
                                              bottom: 19,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgMinimize,
                                              height: getVerticalSize(
                                                11.00,
                                              ),
                                              width: getHorizontalSize(
                                                38.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 26,
                                      top: 13,
                                      right: 26,
                                    ),
                                    child: Text(
                                      "msg_mo_tu".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular15,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 26,
                                        top: 23,
                                        right: 26,
                                      ),
                                      child: Text(
                                        "msg_1_2".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular15,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 26,
                                      top: 17,
                                      right: 21,
                                    ),
                                    child: Text(
                                      "msg_7_8".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular15,
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      34.00,
                                    ),
                                    width: getHorizontalSize(
                                      285.00,
                                    ),
                                    margin: getMargin(
                                      left: 26,
                                      top: 9,
                                      right: 21,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                            height: getSize(
                                              34.00,
                                            ),
                                            width: getSize(
                                              34.00,
                                            ),
                                            margin: getMargin(
                                              left: 40,
                                              right: 40,
                                            ),
                                            decoration: BoxDecoration(
                                              color: ColorConstant.tealA702,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  17.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            margin: getMargin(
                                              top: 8,
                                              bottom: 8,
                                            ),
                                            child: RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: "msg_14_152".tr,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(
                                                        15,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "lbl_17".tr,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(
                                                        15,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "msg_18_19".tr,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontSize: getFontSize(
                                                        15,
                                                      ),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 26,
                                      top: 9,
                                      right: 20,
                                    ),
                                    child: Text(
                                      "msg_21_22".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterRegular15,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 29,
                                        top: 17,
                                        right: 29,
                                        bottom: 16,
                                      ),
                                      child: Text(
                                        "msg_28_29".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: getVerticalSize(
                                1.00,
                              ),
                              width: getHorizontalSize(
                                339.00,
                              ),
                              margin: getMargin(
                                top: 90,
                                bottom: 90,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray200,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: getMargin(
                        left: 4,
                        bottom: 3,
                      ),
                      decoration: AppDecoration.fillGray900a1,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            margin: getMargin(
                              left: 20,
                              top: 116,
                              right: 16,
                              bottom: 146,
                            ),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: getMargin(
                                    left: 20,
                                    top: 26,
                                    right: 20,
                                  ),
                                  color: ColorConstant.teal50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder78,
                                  ),
                                  child: Container(
                                    height: getSize(
                                      156.00,
                                    ),
                                    width: getSize(
                                      156.00,
                                    ),
                                    decoration:
                                        AppDecoration.fillTeal50.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder78,
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              all: 40,
                                            ),
                                            child: CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgThumbsup,
                                              height: getVerticalSize(
                                                69.00,
                                              ),
                                              width: getHorizontalSize(
                                                72.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    top: 12,
                                    right: 20,
                                  ),
                                  child: Text(
                                    "lbl_ok".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRubikMedium38,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    top: 5,
                                    right: 20,
                                  ),
                                  child: Text(
                                    "msg_your_appointmen".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRubikRegular20,
                                  ),
                                ),
                                CustomButton(
                                  width: 295,
                                  text: "lbl_done".tr,
                                  margin: getMargin(
                                    left: 20,
                                    top: 125,
                                    right: 20,
                                  ),
                                  variant: ButtonVariant.FillCyan602,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 20,
                                    top: 18,
                                    right: 20,
                                    bottom: 38,
                                  ),
                                  child: Text(
                                    "msg_edit_your_appoi".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRubikRegular14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
