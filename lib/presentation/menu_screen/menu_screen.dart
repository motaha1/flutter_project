import '../menu_screen/widgets/menu_screen_item_widget.dart';
import 'controller/menu_controller.dart';
import 'models/menu_screen_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
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
                                begin: Alignment(
                                    -4.593806657987587e-9, 0.44766010769375564),
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
                                      margin: getMargin(top: 40),
                                      child: Padding(
                                          padding:
                                              getPadding(left: 13, right: 143),
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
                                                            getHorizontalSize(
                                                                22.00)),
                                                    child: CommonImageView(
                                                        imagePath: ImageConstant
                                                            .imgEllipse164,
                                                        height: getSize(44.00),
                                                        width: getSize(44.00),
                                                        fit: BoxFit.cover)),
                                                Padding(
                                                    padding: getPadding(top: 2),
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
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              2),
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
                                  padding: getPadding(
                                      left: 10, top: 12, bottom: 103),
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 27, bottom: 10),
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
                                                          padding: getPadding(
                                                              top: 59,
                                                              right: 10),
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
                                                                    padding: getPadding(
                                                                        top: 2,
                                                                        bottom:
                                                                            2),
                                                                    child: CommonImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgGroup88,
                                                                        height: getSize(
                                                                            15.00),
                                                                        width: getSize(
                                                                            15.00))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            15),
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
                                            padding: getPadding(left: 36),
                                            child: ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            30.00)),
                                                    bottomLeft: Radius.circular(
                                                        getHorizontalSize(
                                                            30.00))),
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgScreenshot2022,
                                                    height:
                                                        getVerticalSize(613.00),
                                                    width: getHorizontalSize(
                                                        118.00),
                                                    fit: BoxFit.cover)))
                                      ]))
                            ]))))));
  }

  onTapLogout() {
    Get.toNamed(AppRoutes.logOutScreen);
  }
}
