import 'controller/phone_success_controller.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:final_grad_proj/wajeed/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/patient_details_screentwo_screen/patient_details_screentwo_screen.dart';

class PhoneSuccessScreen extends GetWidget<PhoneSuccessController> {
  String _fromUser = "";

  @override
  Widget build(BuildContext context) {
    if (PatientDetailsScreentwoScreen.Page == 2) {
      _fromUser =
          "Congradulations, your Email  has been verified. You can start using the app";
    } else if (SignUpScreen.Page == 1) {
      _fromUser =
          "Congradulations, your Email  has been verified. Please wait for a response and take your personal details via your email";
    }

    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: GestureDetector(
                        onTap: () {
                          onTapPhoneSuccess();
                        },
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 65.w, top: 179.h, right: 64.w),
                                  child: CommonImageView(
                                      imagePath: "assets/images/Done.png",
                                      height: 220.h,
                                      width: 245.w)),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 65.w, top: 51.h, right: 65.w),
                                  child: Text("lbl_email_verified".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtOverpassBold24
                                          .copyWith(height: 1.00))),
                              Container(
                                  width: getHorizontalSize(233.00),
                                  margin: EdgeInsets.only(
                                      left: 65, top: 28, right: 65, bottom: 5),
                                  child: Text(_fromUser,
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtOverpassLight16
                                          .copyWith(height: 1.50)))
                            ]))))));
  }

  onTapPhoneSuccess() {
    if (PatientDetailsScreentwoScreen.Page == 2) {
      PatientDetailsScreentwoScreen.Page = 0;
      Get.toNamed(AppRoutes.homeContainerScreen);
    } else if (SignUpScreen.Page == 1) {
      SignUpScreen.Page = 0;
      Get.toNamed(AppRoutes.welcomeScreen);
    }
  }
}
