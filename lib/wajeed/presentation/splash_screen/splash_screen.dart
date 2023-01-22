import 'package:final_grad_proj/presentation/walkthrough_three_screen/walkthrough_three_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controller/splash_controller.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Container(
                    height: size.height,
                    width: size.width,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                              onTap: () {
                                onTapImgBg();
                              },
                              child: CommonImageView(
                                  imagePath: "assets/images/Splash.png",
                                  height: 812.h,
                                  width: 375.w))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgFrame,
                                      height: 70.h,
                                      width: 70.h),
                                ),
                                SizedBox(height: 6.h),
                                Center(
                                  child: Text("lbl_ask_for_care".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: 25.sp,
                                        fontFamily: 'Rubik',
                                        fontWeight: FontWeight.w700,
                                      )),
                                )
                              ]))
                    ])))));
  }

  onTapImgBg() {
   Get.to(WalkthroughThreeScreen()) ; 
  }
}
