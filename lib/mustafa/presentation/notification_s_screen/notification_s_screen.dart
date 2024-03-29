import 'controller/notification_s_controller.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

class NotificationSScreen extends GetWidget<NotificationSController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: size.width,
                              margin: getMargin(top: 48),
                              child: Padding(
                                  padding: getPadding(left: 24, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              InkWell(
                                                  onTap: () {
                                                    onTapImgArrowleft();
                                                  },
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowleft,
                                                      height: getSize(24.00),
                                                      width: getSize(24.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 4,
                                                      bottom: 3),
                                                  child: Text(
                                                      "lbl_notification".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOverpassBold16))
                                            ]),
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 3),
                                            child: Text("lbl_clear_all".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtHKGroteskMedium13))
                                      ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(164.00),
                              width: size.width,
                              margin: getMargin(top: 17),
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                getPadding(left: 1, top: 10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height:
                                                          getVerticalSize(2.00),
                                                      width: getHorizontalSize(
                                                          374.00),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray201)),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 16,
                                                              right: 24),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top: 5,
                                                                        bottom:
                                                                            13),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCalendar16X16,
                                                                        height: getSize(
                                                                            16.00),
                                                                        width: getSize(
                                                                            16.00))),
                                                                Container(
                                                                    width: getHorizontalSize(
                                                                        228.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            16),
                                                                    child: Text(
                                                                        "msg_the_future_of_p"
                                                                            .tr,
                                                                        maxLines:
                                                                            null,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtOverpassRegular14Bluegray9009e
                                                                            .copyWith(height: 1.21)))
                                                              ]))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 56,
                                                              top: 4,
                                                              right: 56),
                                                          child: Text(
                                                              "msg_aug_12_2020_at"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtOverpassRegular13)))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding: getPadding(bottom: 10),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      height:
                                                          getVerticalSize(2.00),
                                                      width: size.width,
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .gray201)),
                                                  Container(
                                                      width: double.infinity,
                                                      decoration: AppDecoration
                                                          .fillWhiteA701,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            24,
                                                                        top: 17,
                                                                        right:
                                                                            16),
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
                                                                              padding: getPadding(top: 3, bottom: 8),
                                                                              child: CommonImageView(svgPath: ImageConstant.imgBookmark, height: getVerticalSize(22.00), width: getHorizontalSize(16.00))),
                                                                          Container(
                                                                              width: getHorizontalSize(270.00),
                                                                              child: Text("msg_we_know_that".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtHKGroteskBoldLegacy14.copyWith(height: 1.21))),
                                                                          Container(
                                                                              height: getSize(8.00),
                                                                              width: getSize(8.00),
                                                                              margin: getMargin(top: 1, bottom: 25),
                                                                              decoration: BoxDecoration(color: ColorConstant.redA701, borderRadius: BorderRadius.circular(getHorizontalSize(4.00))))
                                                                        ]))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            56,
                                                                        top: 4,
                                                                        right:
                                                                            56,
                                                                        bottom:
                                                                            21),
                                                                    child: Text(
                                                                        "msg_aug_12_2020_at"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtOverpassRegular13)))
                                                          ]))
                                                ])))
                                  ]))),
                      Container(
                          height: getVerticalSize(2.00),
                          width: size.width,
                          margin: getMargin(top: 19),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray201)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 16, right: 25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 16),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgUser16X14,
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(14.00))),
                                    Container(
                                        width: getHorizontalSize(246.00),
                                        margin: getMargin(left: 16),
                                        child: Text("msg_with_this_in_mi".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOverpassRegular14Bluegray9009e
                                                .copyWith(height: 1.21)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 56, top: 4, right: 56),
                              child: Text("msg_aug_12_2020_at".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassRegular13))),
                      Container(
                          height: getVerticalSize(2.00),
                          width: size.width,
                          margin: getMargin(top: 19),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray201)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 16, right: 25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 4, bottom: 9),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgUser16X14,
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(14.00))),
                                    Container(
                                        width: getHorizontalSize(277.00),
                                        margin: getMargin(left: 16),
                                        child: Text("msg_technology_shou".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOverpassRegular14Bluegray9009e
                                                .copyWith(height: 1.21)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 56, top: 8, right: 56),
                              child: Text("msg_aug_12_2020_at".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassRegular13))),
                      Container(
                          height: getVerticalSize(2.00),
                          width: size.width,
                          margin: getMargin(top: 19),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray201)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 25, top: 16, right: 25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 16),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgUser16X14,
                                            height: getVerticalSize(16.00),
                                            width: getHorizontalSize(14.00))),
                                    Container(
                                        width: getHorizontalSize(235.00),
                                        margin: getMargin(left: 16),
                                        child: Text("msg_peer_learning_w".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOverpassRegular14Bluegray9009e
                                                .copyWith(height: 1.21)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(
                                  left: 56, top: 4, right: 56, bottom: 5),
                              child: Text("msg_aug_12_2020_at".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassRegular13)))
                    ])))));
  }

  onTapImgArrowleft() {
    Get.back();
  }
}
