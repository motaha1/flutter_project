import 'package:final_grad_proj/gsk_2022/another/presentation/three_screen/three_screen.dart';
import 'package:final_grad_proj/screens_test/sign_in_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'controller/welcome_controller.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/domain/facebookauth/facebook_auth_helper.dart';

class WelcomeScreen extends StatelessWidget {
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
                          height: (260.00.h),
                          width: (258.00.w),
                          margin: EdgeInsets.only(
                              left: 32.w, top: 112.h, right: 32.w),
                          child:
                              Stack(alignment: Alignment.centerLeft, children: [
                            /*    Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: (258.00.h),
                                    width: (258.00.w),
                                    margin: EdgeInsets.only(bottom: 2.h),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.indigoA40007,
                                        borderRadius: BorderRadius.circular(
                                           (129.00.r))))),*/
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 2.h),
                                    child: CommonImageView(
                                        svgPath:
                                            'assets/images/img_maskgroup_258X258.svg',
                                        height: (258.00.h),
                                        width: (258.00.w))))
                          ])),
                      // SvgPicture.asset(ImageConstant.imgMaskgroup258X258),

                      Padding(
                          padding: EdgeInsets.only(
                              left: 32.w, top: 34.h, right: 32.w),
                          child: Text("msg_welcome_to_ask".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtOverpassBold24
                                  .copyWith(height: 1.00.h))),
                      Container(
                          width: (233.00.w),
                          margin: EdgeInsets.only(
                              left: 32.w, top: 28.h, right: 32.w),
                          child: Text("msg_do_you_want_som".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtOverpassLight16
                                  .copyWith(height: 1.50.h))),
                      CustomButton(
                          width: 311,
                          text: "msg_sign_up_with_em".tr.toUpperCase(),
                          margin: EdgeInsets.only(
                              left: 32.w, top: 34.h, right: 32.w),
                          variant: ButtonVariant.OutlineIndigoA40019,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll13,
                          fontStyle: ButtonFontStyle.OverpassBold16,
                          onTap: onTapBtnSignupwithem),
                      GestureDetector(
                          onTap: () {
                            onTapRowfacebook();
                          },
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: 32.w, top: 10.h, right: 32.w),
                              decoration: AppDecoration.outlineBluegray90019
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder25),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                        padding: EdgeInsets.only(
                                            top: 16.h, bottom: 16.h),
                                        child: InkWell(
                                            onTap: () {
                                              onTapImgFacebook();
                                            },
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgFacebook,
                                                height: (18.00.h),
                                                width: (18.00.w)))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 21.w,
                                            top: 16.h,
                                            bottom: 19.h),
                                        child: Text(
                                            "msg_continue_with_f"
                                                .tr
                                                .toUpperCase(),
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOverpassBold13))
                                  ]))),
                      CustomButton(
                          width: 311.w,
                          text: "msg_continue_with_g".tr.toUpperCase(),
                          margin: EdgeInsets.only(
                              left: 32.w, top: 10.h, right: 32.w),
                          variant: ButtonVariant.OutlineBluegray90019,
                          shape: ButtonShape.CircleBorder25,
                          fontStyle: ButtonFontStyle.OverpassBold13,
                          prefixWidget: Container(
                              margin: EdgeInsets.only(right: 19.w),
                              child: CommonImageView(
                                  svgPath: (ImageConstant.imgGoogle),
                                  height: (18.00.h),
                                  width: (18.00.w)))),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                       SignInScreen()));
                          },
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 32.w,
                                  top: 16.h,
                                  right: 32.w,
                                  bottom: 5.h),
                              child: Text("lbl_login".tr.toUpperCase(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassRegular14)))
                    ])))));
  }

  onTapBtnSignupwithem() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  onTapRowfacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapImgFacebook() async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapTxtLogin() {
    Get.to(SignInScreen());
  }
}
