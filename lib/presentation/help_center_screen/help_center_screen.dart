import 'controller/help_center_controller.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/widgets/custom_icon_button.dart';
import 'package:final_grad_proj/widgets/custom_text_form_field.dart';
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
                                  height: getVerticalSize(812.00),
                                  width: getHorizontalSize(375.00))),
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
                                                          "lbl_help_center2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikMedium18))
                                                ]))),
                                    CustomTextFormField(
                                        width: 335,
                                        focusNode: FocusNode(),
                                        controller: controller.searchController,
                                        hintText: "msg_i_have_an_issue".tr,
                                        margin: getMargin(
                                            left: 19, top: 34, right: 19),
                                        variant: TextFormFieldVariant
                                            .OutlineBlack9000c,
                                        shape:
                                            TextFormFieldShape.RoundedBorder6,
                                        fontStyle:
                                            TextFormFieldFontStyle.RubikLight18,
                                        textInputAction: TextInputAction.done),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 19, right: 19),
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
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlay12X7,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          7.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 35, right: 19),
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
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlay12X7,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          7.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 35, right: 19),
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
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlay12X7,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          7.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 35, right: 19),
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
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlay12X7,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          7.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 35, right: 19),
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
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlay12X7,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          7.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 35, right: 19),
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
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlay12X7,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          7.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 35, right: 19),
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
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlay12X7,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          7.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 35, right: 19),
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
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlay12X7,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          7.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 19, top: 35, right: 19),
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
                                                  padding: getPadding(
                                                      top: 4, bottom: 4),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgPlay12X7,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          7.00)))
                                            ])),
                                    Padding(
                                        padding: getPadding(
                                            left: 19,
                                            top: 35,
                                            right: 19,
                                            bottom: 114),
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
                                                          .imgPlay12X7,
                                                      height: getVerticalSize(
                                                          12.00),
                                                      width: getHorizontalSize(
                                                          7.00)))
                                            ]))
                                  ]))
                        ]))))));
  }

  onTapBtntf() {
    Get.back();
  }
}
