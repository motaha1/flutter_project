import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../walkthrough_four_screen/widgets/sliderwaytotakecar_item_widget.dart';
import 'controller/walkthrough_four_controller.dart';
import 'models/sliderwaytotakecar_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WalkthroughFourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                  Padding(
                      padding:
                          EdgeInsets.only(left: 40.w, top: 192.h, right: 40.w),
                      child: CommonImageView(
                          svgPath: ImageConstant.imgGroup1208214X214,
                          height: 214.00.h,
                          width: 200.w)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 40.w, top: 103.h, right: 40.w),
                      child: Center(
                        child: Text(
                          "msg_way_to_take_car".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtOverpassBold24.copyWith(
                            height: 1.00.h,
                          ),
                        ),
                      )),
                   
             Container(
          width: 
            247.00.w,
          
          margin:EdgeInsets.only (
            left: 6.w,
            top: 40.h,
            right: 7.w,
          ),
          child: Text(
            "msg_the_application".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtOverpassLight16.copyWith(
              height: 1.50.h,
            ),
          ),
        ),
                  /*  Padding(
                          padding: getPadding(
                              left: 40, top: 29, right: 38, bottom: 64),
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
                                        padding: getPadding(top: 1),
                                        child: Text("lbl_skip".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOverpassRegular14))),
                                Container(
                                    height: getVerticalSize(4.00),
                                    margin: getMargin(top: 7, bottom: 6),
                                    child: SmoothIndicator(
                                        offset: 0,
                                        count: 4,
                                        axisDirection: Axis.horizontal,
                                        effect: ScrollingDotsEffect(
                                            spacing: 8,
                                            activeDotColor:
                                                ColorConstant.indigoA400,
                                            dotColor: ColorConstant.gray400,
                                            dotHeight: getVerticalSize(4.00),
                                            dotWidth:
                                                getHorizontalSize(4.00)))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtNext();
                                    },
                                    child: Padding(
                                        padding: getPadding(bottom: 3),
                                        child: Text("lbl_next".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOverpassBold14)))
                              ]))*/
                ]))));
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.welcomeScreen);
  }

  onTapTxtNext() {
    Get.toNamed(AppRoutes.welcomeScreen);
  }
}
