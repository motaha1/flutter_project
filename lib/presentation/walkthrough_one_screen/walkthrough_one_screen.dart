import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/walkthrough_one_controller.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughOneScreen extends StatefulWidget {
  @override
  State<WalkthroughOneScreen> createState() => _WalkthroughOneScreenState();
}

class _WalkthroughOneScreenState extends State<WalkthroughOneScreen> {
  final controller =
      PageController(viewportFraction: 0.8, keepPage: true);
      

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
                      Padding(
                          padding: EdgeInsets.only(
                              left: 40.w, top: 110.h, right: 40.w),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgGroup1208,
                              height: 317.00.h,
                              width: 291.00.w)),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 40.w, top: 82.h, right: 40.w),
                          child: Text("msg_online_healthca".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: ColorConstant.bluegray900,
                                fontSize: getFontSize(
                                  24.sp,
                                ),
                                fontFamily: 'Overpass',
                                fontWeight: FontWeight.w700,
                              ))),
                      Container(
                          width: 243.00.w,
                          margin: EdgeInsets.only(
                              left: 40.w, top: 46.h, right: 40.w),
                          child: Text("msg_health_is_essen".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtOverpassLight16)),
                      SizedBox(height: 2.h),
                      Text(" Ask for Care now!!",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtOverpassLight16),
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
                                            style: TextStyle(
                                              color:
                                                  ColorConstant.bluegray90072,
                                              fontSize: getFontSize(
                                                14.sp,
                                              ),
                                              fontFamily: 'Overpass',
                                              fontWeight: FontWeight.w400,
                                            )))),
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
    Get.toNamed(AppRoutes.walkthroughTwoScreen);
  }
}
