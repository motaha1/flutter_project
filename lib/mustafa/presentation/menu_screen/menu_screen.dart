import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../menu_screen/widgets/menu_screen_item_widget.dart';
import 'controller/menu_controller.dart';
import 'models/menu_screen_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

class MenuScreen extends GetWidget<MenuController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment(5, 0.44766010769375564),
                                end: Alignment(
                                    0.9999999901829075, 0.45566502208543164),
                                colors: [
                              ColorConstant.indigoA400,
                              ColorConstant.gray200
                            ])),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      width: size.width,
                                      margin: EdgeInsets.only(top: 40.h),
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 13.w, right: 143.w),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            22.00.r),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse164,
                                                        height: 44.00.h,
                                                        width: 44.00.w,
                                                        fit: BoxFit.cover)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        top: 2.h),
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
                                                          Text(
                                                              "msg_hi_wajeed_mabr"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtAbelRegular20),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding: EdgeInsets
                                                                      .only(
                                                                          left: 2
                                                                              .w),
                                                                  child: Text(
                                                                      "msg_welcome_to_ask2"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtInterRegular14)))
                                                        ]))
                                              ])))),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.w, top: 12.h, bottom: 103.h),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                top: 27.h, bottom: 10.h),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Obx(() => ListView.builder(
                                                      physics:
                                                          BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: controller
                                                          .menuModelObj
                                                          .value
                                                          .menuScreenItemList
                                                          .length,
                                                      itemBuilder:
                                                          (context, index) {
                                                        MenuScreenItemModel
                                                            model = controller
                                                                    .menuModelObj
                                                                    .value
                                                                    .menuScreenItemList[
                                                                index];
                                                        return MenuScreenItemWidget(
                                                            model);
                                                      })),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapLogout();
                                                      },
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 59.h,
                                                                  right: 10.w),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top:
                                                                            2.h,
                                                                        bottom: 2
                                                                            .h),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgGroup88,
                                                                        height:
                                                                            15.00
                                                                                .h,
                                                                        width: 15.00
                                                                            .w)),
                                                                Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left: 15
                                                                            .w),
                                                                    child: Text(
                                                                        "lbl_logout"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtRubikMedium18RedA700))
                                                              ])))
                                                ])),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 36.h),
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        30.00.r),
                                                    bottomLeft: Radius.circular(
                                                        30.00.r)),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgScreenshot2022,
                                                    height: 613.00.h,
                                                    width: 118.00.w,
                                                    fit: BoxFit.cover)))
                                      ]))
                            ]))))));
  }

  onTapLogout() {
    Get.toNamed(AppRoutes.logOutScreen);
  }
}
