import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/walkthrough_two_controller.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class WalkthroughTwoScreen extends StatefulWidget {
  @override
  State<WalkthroughTwoScreen> createState() =>
      _WalkthroughTwoScreenStateState();
}

class _WalkthroughTwoScreenStateState
    extends State<WalkthroughTwoScreen> {
  final controller =
      PageController(viewportFraction: 0.8, keepPage: true, initialPage: 1);

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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Container(
                          height: 340.00.h,
                          width: 291.00.w,
                          margin: EdgeInsets.only(
                              left: 40.w, top: 87.h, right: 40.w),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    height: 248.00.h,
                                    width: 248.00.w,
                                    margin: EdgeInsets.only(
                                        left: 21.w, top: 10.h, right: 21.w),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.indigoA4000f,
                                        borderRadius:
                                            BorderRadius.circular(124.00.h)))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgMaskgroup,
                                    height: 340.00.h,
                                    width: 291.00.w))
                          ])),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 40.w, top: 82.h, right: 40.w),
                          child: Text("msg_get_care_on_tim".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold24
                                  .copyWith(height: 1.00.h))),
                      Container(
                          width: 257.00.w,
                          margin: EdgeInsets.only(
                              left: 40.w, top: 46.h, right: 40.w),
                          child: Text("msg_we_offer_home_c".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtOverpassLight16
                                  .copyWith(height: 1.50.h))),
                      /*Padding(
                           padding: EdgeInsets.only(
                              left: 40.w, top: 78.h, right: 38.w, bottom: 64.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSkip();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(top: 1.h),
                                        child: Text("lbl_skip".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOverpassRegular14))),
                                Container(
                                    height: 4.00.h,
                                    margin:
                                        EdgeInsets.only(top: 7.h, bottom: 6.h),
                                    child: SmoothPageIndicator(
                                        controller: controller,
                                        count: 4,
                                        axisDirection: Axis.horizontal,
                                        effect: JumpingDotEffect(
                                            spacing: 8.w,
                                            activeDotColor:
                                                ColorConstant.indigoA400,
                                            dotColor: ColorConstant.gray400,
                                            dotHeight: 8.00.h,
                                            dotWidth: 6.00.w))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtNext();
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(bottom: 3.h),
                                        child: Text("lbl_next".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOverpassBold14)))
                              ]))*/
                    ])))));
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.welcomeScreen);
    
  }

  onTapTxtNext() {
    Get.toNamed(AppRoutes.walkthroughThreeScreen);
  }
}
