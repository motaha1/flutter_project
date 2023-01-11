import 'controller/video_call_controller.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_icon_button.dart';

class VideoCallScreen extends GetWidget<VideoCallController> {
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
                          // Align(
                          //     alignment: Alignment.centerLeft,
                          //     child: CommonImageView(
                          //         imagePath: ImageConstant.imgRectangle509,
                          //         height: getVerticalSize(825.00),
                          //         width: getHorizontalSize(375.00))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 22, top: 28, right: 22),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(12.00)),
                                          // child: CommonImageView(
                                          //     imagePath: ImageConstant
                                          //         .imgRectangle1087,
                                          //     height: getVerticalSize(98.00),
                                          //     width: getHorizontalSize(86.00),
                                          //     fit: BoxFit.cover)
                                        )),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 22,
                                                top: 598,
                                                right: 22,
                                                bottom: 40),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    variant: IconButtonVariant
                                                        .FillGray602,
                                                    // child: CommonImageView(
                                                    //     svgPath: ImageConstant
                                                    //         .imgMicrophone48x48
                                                    //)
                                                  ),
                                                  CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    margin: getMargin(left: 20),
                                                    variant: IconButtonVariant
                                                        .FillBluegray903,
                                                    // child: CommonImageView(
                                                    //     svgPath: ImageConstant
                                                    //         .imgVolume48x48)
                                                  ),
                                                  CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    margin: getMargin(left: 20),
                                                    variant: IconButtonVariant
                                                        .FillRedA701,
                                                    // child: CommonImageView(
                                                    //     svgPath: ImageConstant
                                                    //         .imgVideocamera48x48)
                                                  ),
                                                  CustomIconButton(
                                                      height: 48,
                                                      width: 48,
                                                      margin:
                                                          getMargin(left: 20),
                                                      variant: IconButtonVariant
                                                          .FillTeal400,
                                                      onTap: () {
                                                        onTapBtntf();
                                                      },
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgBookmark)),
                                                  CustomIconButton(
                                                    height: 48,
                                                    width: 48,
                                                    margin: getMargin(left: 20),
                                                    variant: IconButtonVariant
                                                        .FillRed600,
                                                    onTap: () {
                                                      onTapBtntf1();
                                                    },
                                                    // child: CommonImageView(
                                                    //     svgPath: ImageConstant
                                                    //         .imgArrowrightBlack900)
                                                  )
                                                ])))
                                  ]))
                        ]))))));
  }

  onTapBtntf() {
    //  Get.toNamed();
  }

  onTapBtntf1() {
    // Get.toNamed();
  }
}
