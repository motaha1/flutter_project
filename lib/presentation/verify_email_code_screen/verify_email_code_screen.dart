import 'controller/verify_email_code_controller.dart';import 'package:final_grad_proj/core/app_export.dart';import 'package:final_grad_proj/widgets/custom_button.dart';import 'package:flutter/material.dart';import 'package:final_grad_proj/domain/googleauth/google_auth_helper.dart';import 'package:final_grad_proj/domain/facebookauth/facebook_auth_helper.dart';class VerifyEmailCodeScreen extends GetWidget<VerifyEmailCodeController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: size.width, child: SingleChildScrollView(child: Container(height: size.height, width: size.width, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.topCenter, child: GestureDetector(onTap: () {onTapColumnwelcomeback();}, child: Padding(padding: getPadding(left: 20, top: 127, right: 20, bottom: 127), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 88, right: 86), child: Text("lbl_welcome_back".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikMedium24)), Padding(padding: getPadding(left: 88, top: 13, right: 88), child: Text("msg_your_care_await".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikRegular14)), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 104), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [GestureDetector(onTap: () {onTapGoogle();}, child: Container(decoration: AppDecoration.outlineBlack9000f.copyWith(borderRadius: BorderRadiusStyle.circleBorder25), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Padding(padding: getPadding(left: 40, top: 18, bottom: 17), child: CommonImageView(imagePath: ImageConstant.imgGroup18X18, height: getSize(18.00), width: getSize(18.00))), Padding(padding: getPadding(left: 12, top: 17, right: 40, bottom: 18), child: Text("lbl_google".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikLight16))]))), GestureDetector(onTap: () {onTapFacebook();}, child: Container(decoration: AppDecoration.outlineBlack9000f.copyWith(borderRadius: BorderRadiusStyle.circleBorder25), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Padding(padding: getPadding(left: 29, top: 18, bottom: 17), child: CommonImageView(imagePath: ImageConstant.imgGroupWhiteA700, height: getSize(18.00), width: getSize(18.00))), Padding(padding: getPadding(left: 16, top: 17, right: 28, bottom: 18), child: Text("lbl_facebook".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikLight16))])))])))])))), Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(803.00), width: size.width, margin: getMargin(bottom: 9), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topLeft, child: Padding(padding: getPadding(bottom: 10), child: CommonImageView(imagePath: ImageConstant.imgRectangle43, height: getVerticalSize(736.00), width: getHorizontalSize(375.00)))), Align(alignment: Alignment.bottomLeft, child: Container(margin: getMargin(top: 10), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.customBorderTL30), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapRectangle540();}, child: Container(height: getVerticalSize(5.00), width: getHorizontalSize(130.00), margin: getMargin(left: 19, top: 21, right: 19), decoration: BoxDecoration(color: ColorConstant.gray400, borderRadius: BorderRadius.circular(getHorizontalSize(2.71))))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 19, top: 59, right: 19), child: Text("msg_enter_4_digits".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikMedium24))), Align(alignment: Alignment.centerLeft, child: Container(width: getHorizontalSize(271.00), margin: getMargin(left: 20, top: 17, right: 20), child: Text("msg_enter_the_4_dig".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRubikRegular14))), Align(alignment: Alignment.center, child: Container(margin: getMargin(left: 19, top: 37, right: 19), decoration: BoxDecoration(borderRadius: BorderRadius.circular(getHorizontalSize(12.00))), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(padding: getPadding(left: 19, top: 15, right: 19, bottom: 15), decoration: AppDecoration.txtOutlineBluegray50028.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder12), child: Text("lbl_5".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPTSansBold26)), Container(margin: getMargin(left: 16), padding: getPadding(left: 19, top: 15, right: 19, bottom: 15), decoration: AppDecoration.txtOutlineBluegray50028.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder12), child: Text("lbl_3".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPTSansBold26)), Container(margin: getMargin(left: 16), padding: getPadding(left: 19, top: 15, right: 19, bottom: 15), decoration: AppDecoration.txtOutlineBluegray50028.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder12), child: Text("lbl_0".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPTSansBold26)), Padding(padding: getPadding(left: 16), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(12.00)), child: CommonImageView(svgPath: ImageConstant.imgVolume, height: getVerticalSize(58.00), width: getHorizontalSize(54.00), fit: BoxFit.cover)))]))), CustomButton(width: 295, text: "lbl_continue".tr, margin: getMargin(left: 30, top: 43, right: 30), shape: ButtonShape.RoundedBorder28, onTap: onTapBtnContinue, alignment: Alignment.centerRight), Align(alignment: Alignment.center, child: GestureDetector(onTap: () {onTapTxtResendcode();}, child: Padding(padding: getPadding(left: 19, top: 21, right: 19, bottom: 5), child: Text("lbl_resend_code".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOverpassRegular14IndigoA400.copyWith(height: 1.00)))))])))])))])))))); } 
onTapColumnwelcomeback() { Get.toNamed(AppRoutes.loginScreen); } 
onTapGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
onTapFacebook() async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
onTapRectangle540() { Get.toNamed(AppRoutes.loginScreen); } 
onTapBtnContinue() { Get.toNamed(AppRoutes.resetPScreen); } 
onTapTxtResendcode() { Get.toNamed(AppRoutes.forgotPScreen); } 
 }