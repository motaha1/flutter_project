import 'controller/privacy_policy_controller.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/widgets/custom_icon_button.dart';
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
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgBg,
                                  height: getVerticalSize(812.00),
                                  width: getHorizontalSize(375.00))),
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
                                            margin: getMargin(top: 36),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomIconButton(
                                                      height: 30,
                                                      width: 30,
                                                      margin:
                                                          getMargin(left: 20),
                                                      onTap: () {
                                                        onTapBtntf();
                                                      },
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleftBluegray500)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 19,
                                                          top: 5,
                                                          bottom: 4),
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
                                            padding: getPadding(
                                                left: 20, top: 28, right: 20),
                                            child: Text(
                                                "msg_ask_for_care_ap".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtRubikBold18))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: getHorizontalSize(322.00),
                                            margin: getMargin(
                                                left: 20, top: 17, right: 20),
                                            child: Text("msg_there_are_many".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRegular14Bluegray300cc))),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 20, top: 21, right: 19),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 2, bottom: 45),
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
                                                                height: getSize(
                                                                    8.00),
                                                                width: getSize(
                                                                    8.00),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .indigoA400,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(4.00)))),
                                                            Container(
                                                                height: getSize(
                                                                    8.00),
                                                                width: getSize(
                                                                    8.00),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            79),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .indigoA400,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(4.00)))),
                                                            Container(
                                                                height: getSize(
                                                                    8.00),
                                                                width: getSize(
                                                                    8.00),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            58),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .indigoA400,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(4.00)))),
                                                            Container(
                                                                height: getSize(
                                                                    8.00),
                                                                width: getSize(
                                                                    8.00),
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            58),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .indigoA400,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(4.00))))
                                                          ])),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          306.00),
                                                      margin:
                                                          getMargin(left: 8),
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
                                            width: getHorizontalSize(329.00),
                                            margin: getMargin(
                                                left: 20,
                                                top: 21,
                                                right: 20,
                                                bottom: 45),
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
    Get.back();
  }
}
