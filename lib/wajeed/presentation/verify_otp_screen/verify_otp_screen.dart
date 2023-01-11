import 'controller/verify_otp_controller.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_text_form_field.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:final_grad_proj/wajeed/presentation/patient_details_screentwo_screen/patient_details_screentwo_screen.dart';

class VerifyOtpScreen extends GetWidget<VerifyOtpController> {
  int count = 0;
  String email = SignUpScreen.Email;
  String numb = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                //child: SingleChildScrollView(
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.w, top: 37.h, right: 24.w),
                              child: InkWell(
                                  onTap: () {
                                    onTapImgArrowleft();
                                  },
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgArrowleft,
                                      height: getSize(24.00),
                                      width: getSize(24.00))))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 32.w, top: 39.h, right: 32.w),
                              child: Text("msg_enter_the_verif".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassBold24
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(282.00),
                              margin: EdgeInsets.only(
                                  left: 32.w, top: 8.h, right: 32.w),
                              child: Text(
                                  "We just send you a verification code via Email \n $email"
                                      .tr,
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassRegular14
                                      .copyWith(height: 1.50)))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: size.width,
                            height: 100.h,
                            padding: EdgeInsets.only(
                                left: 24.w, top: 40.h, right: 15.w),
                            child: PinCodeTextField(
                              appContext: context,
                              controller: controller.otpController.value,
                              length: 6,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: false,
                              inputFormatters: [
                                FilteringTextInputFormatter.singleLineFormatter
                              ],
                              onChanged: (value) {
                                print(value);
                              },
                              pinTheme: PinTheme(
                                fieldWidth: getHorizontalSize(40.00),
                                shape: PinCodeFieldShape.underline,
                                selectedFillColor: ColorConstant.bluegray90019,
                                activeFillColor: ColorConstant.bluegray90019,
                                inactiveFillColor: ColorConstant.bluegray90019,
                              ),
                              onCompleted: (value) {
                                numb = value.toString();
                                onTapBtnSubmitcode();
                              },
                            ),
                          )),
                      CustomButton(
                          width: 311,
                          text: "lbl_submit_code".tr.toUpperCase(),
                          margin: EdgeInsets.only(
                              left: 24.w, top: 28.h, right: 24.w),
                          variant: ButtonVariant.OutlineIndigoA40019,
                          shape: ButtonShape.CircleBorder25,
                          padding: ButtonPadding.PaddingAll13,
                          fontStyle: ButtonFontStyle.OverpassBold16,
                          onTap: onTapBtnSubmitcode,
                          alignment: Alignment.center),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.w, top: 23.h, right: 24.w),
                              child: Text("The verify will expire in $count ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassRegular14
                                      .copyWith(height: 1.00)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 24.w,
                                  top: 16.h,
                                  right: 24.w,
                                  bottom: 5.h),
                              child: Text("lbl_resend_code".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassRegular14IndigoA400
                                      .copyWith(height: 1.00))))
                    ]))));
  }

  onTapImgArrowleft() {
    if (PatientDetailsScreentwoScreen.Page == 2) {
      PatientDetailsScreentwoScreen.Page = 0;
      Get.toNamed(AppRoutes.patientDetailsScreentwoScreen);
    } else if (SignUpScreen.Page == 1) {
      SignUpScreen.Page = 0;
      Get.toNamed(AppRoutes.signUpScreen);
    }
  }

  onTapBtnSubmitcode() {
    if (numb == "") {
      Get.snackbar('Error', "Please retry,Number has not been entered yet");
    } else if (numb == "222222") {
      Get.toNamed(AppRoutes.phoneSuccessScreen);
    } else {
      Get.snackbar(
          'Error',
          "Please retry, the Number you entered "
              """ "$numb" """
              " is incorrect");
    }
  }
}
