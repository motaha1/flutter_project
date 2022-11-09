import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../walkthrough_four_screen/walkthrough_four_screen.dart';
import '../walkthrough_one_screen/walkthrough_one_screen.dart';
import '../walkthrough_two_screen/walkthrough_two_screen.dart';
import 'controller/walkthrough_three_controller.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//import 'package:vector_graphics_compiler/vector_graphics_compiler.dart';

class WalkthroughThreeScreen extends StatefulWidget {
  @override
  State<WalkthroughThreeScreen> createState() => _WalkthroughThreeScreenState();
}

class _WalkthroughThreeScreenState extends State<WalkthroughThreeScreen> {
  final controller = PageController(viewportFraction: 1, keepPage: true);
  // controller.nextPage(duration: duration, curve: curve)

  Widget build(BuildContext context) {
    final pages = [
      WalkthroughOneScreen(),
      WalkthroughTwoScreen(),
      WalkthroughThreeScreen5(),
      WalkthroughFourScreen()
    ];
    return Scaffold(
      backgroundColor: ColorConstant.whiteA700,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //height: MediaQuery.of(context).size.height,
              //width: MediaQuery.of(context).size.width,

              SizedBox(
                height: MediaQuery.of(context).size.height - 80.h,
                width: double.infinity,
                child: PageView.builder(
                  controller: controller,
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    print(index);
                    return pages[index % pages.length];
                  },
                ),
              ),

              Padding(
                  padding: EdgeInsets.only(left: 40.w, top: 10.h, right: 38.w),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        GestureDetector(
                            onTap: () {
                              //     onTapTxtSkip();
                              onTapTxtSkip();
                            },
                            child: Padding(
                                padding: EdgeInsets.only(top: 1.h),
                                child: Text("lbl_skip".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: ColorConstant.bluegray90072,
                                      fontSize: getFontSize(
                                        14.sp,
                                      ),
                                      fontFamily: 'Overpass',
                                      fontWeight: FontWeight.w400,
                                    )))),
                        Container(
                            height: 4.00.h,
                            margin: EdgeInsets.only(top: 7.h, bottom: 6.h),
                            child: SmoothPageIndicator(
                                controller: controller,
                                count: 4,
                                axisDirection: Axis.horizontal,
                                effect: JumpingDotEffect(
                                    spacing: 8.w,
                                    activeDotColor: ColorConstant.indigoA400,
                                    dotColor: ColorConstant.gray400,
                                    // jumpScale: 50,
                                    dotHeight: 8.00.h,
                                    dotWidth: 6.00.w))),
                        GestureDetector(
                            onTap: () {
                              //  onTapTxtNext();

                              controller.nextPage(
                                  duration: Duration(milliseconds: 1000),
                                  curve: Curves.bounceInOut);

                              print(controller.offset);
                              print(controller.position);
                              print(controller.page);
                              if (controller.page == 3) {
                                onTapTxtNext();
                              }
                            },
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 3.h),
                                child: Text("lbl_next".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtOverpassBold14)))
                      ]))
            ],
          ),
        ),
      ),
    );
  }

  onTapTxtSkip() {
    Get.toNamed(AppRoutes.welcomeScreen);
  }

  onTapTxtNext() {
    Get.toNamed(AppRoutes.welcomeScreen);
  }
}

final colors = const [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];

class WalkthroughThreeScreen5 extends StatefulWidget {
  @override
  State<WalkthroughThreeScreen5> createState() =>
      _WalkthroughThreeScreenState5();
}

class _WalkthroughThreeScreenState5 extends State<WalkthroughThreeScreen5> {
  final controller =
      PageController(viewportFraction: 0.8, keepPage: true, initialPage: 2);

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
                              left: 40.w, top: 209.h, right: 40.w),
                          child: CommonImageView(
                              url: 'https://i.ibb.co/7ShPnnG/img-group3645.png',
                              height: 196.00.h,
                              width: 245.00.w)),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 40.w, top: 103.h, right: 40.w),
                          child: Text("msg_contact_the_spe".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold24
                                  .copyWith(height: 1.00.h))),
                      Container(
                          width: 225.00.w,
                          margin: EdgeInsets.only(
                              left: 40.w, top: 40.h, right: 40.w),
                          child: Text("msg_we_provide_comm".tr,
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
                                        padding:EdgeInsets.only(bottom: 3.h),
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
    Get.toNamed(AppRoutes.walkthroughFourScreen);
  }
}
