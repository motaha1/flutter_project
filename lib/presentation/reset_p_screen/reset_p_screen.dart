import 'controller/reset_p_controller.dart';import 'package:final_grad_proj/core/app_export.dart';import 'package:final_grad_proj/core/utils/validation_functions.dart';import 'package:final_grad_proj/widgets/custom_button.dart';import 'package:final_grad_proj/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';import 'package:final_grad_proj/domain/googleauth/google_auth_helper.dart';import 'package:final_grad_proj/domain/facebookauth/facebook_auth_helper.dart';
// ignore_for_file: must_be_immutable
class ResetPScreen extends GetWidget<ResetPController> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: size.width, child: SingleChildScrollView(child: Form(key: _formKey, autovalidateMode: AutovalidateMode.onUserInteraction, child: Container(height: size.height, width: size.width, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.topCenter, child: GestureDetector(onTap: () {onTapColumnwelcomeback();}, child: Padding(padding: getPadding(left: 20, top: 127, right: 20, bottom: 127), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 88, right: 86), child: Text("lbl_welcome_back".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikMedium24)), Padding(padding: getPadding(left: 88, top: 13, right: 88), child: Text("msg_your_care_await".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikRegular14)), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 104), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [CustomButton(width: 160, text: "lbl_google".tr, variant: ButtonVariant.OutlineBlack9000f, shape: ButtonShape.CircleBorder25, fontStyle: ButtonFontStyle.RubikLight16, prefixWidget: Container(margin: getMargin(right: 12), child: CommonImageView(imagePath: ImageConstant.imgGroup18X18, height: getSize(18.00), width: getSize(18.00))), onTap: onTapBtnGoogle), CustomButton(width: 160, text: "lbl_facebook".tr, variant: ButtonVariant.OutlineBlack9000f, shape: ButtonShape.CircleBorder25, fontStyle: ButtonFontStyle.RubikLight16, prefixWidget: Container(margin: getMargin(right: 16), child: CommonImageView(imagePath: ImageConstant.imgGroupWhiteA700, height: getSize(18.00), width: getSize(18.00))), onTap: onTapBtnFacebook)])))])))), Align(alignment: Alignment.centerLeft, child: Container(height: size.height, width: size.width, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.centerLeft, child: Container(decoration: AppDecoration.fillBlack90087, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(460.00), width: size.width, margin: getMargin(top: 352), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(30.00)), topRight: Radius.circular(getHorizontalSize(30.00))))))]))), Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(left: 19, top: 50, right: 19, bottom: 50), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapRectangle541();}, child: Container(height: getVerticalSize(5.00), width: getHorizontalSize(130.00), margin: getMargin(left: 21, right: 21), decoration: BoxDecoration(color: ColorConstant.gray400, borderRadius: BorderRadius.circular(getHorizontalSize(2.50))))), Padding(padding: getPadding(top: 55, right: 10), child: Text("lbl_reset_password".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikMedium24)), Container(width: getHorizontalSize(313.00), margin: getMargin(left: 1, top: 17, right: 10), child: Text("msg_set_the_new_pas".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRubikRegular14)), Obx(() => CustomTextFormField(width: 335, focusNode: FocusNode(), controller: controller.passwordController, hintText: "lbl_new_password".tr, margin: getMargin(left: 1, top: 27), alignment: Alignment.center, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: getMargin(left: 30, top: 20, right: 24, bottom: 20), child: CommonImageView(svgPath: controller.isShowPassword.value ? ImageConstant.imgEye : ImageConstant.imgEye))), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(16.00), minHeight: getVerticalSize(14.00)), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "Please enter valid password";} return null;}, isObscureText: !controller.isShowPassword.value)), Obx(() => CustomTextFormField(width: 335, focusNode: FocusNode(), controller: controller.passwordOneController, hintText: "msg_re_enter_passwo".tr, margin: getMargin(left: 1, top: 18), textInputAction: TextInputAction.done, alignment: Alignment.center, suffix: InkWell(onTap: () {controller.isShowPassword1.value = !controller.isShowPassword1.value;}, child: Container(margin: getMargin(left: 30, top: 20, right: 24, bottom: 20), child: CommonImageView(svgPath: controller.isShowPassword1.value ? ImageConstant.imgEye : ImageConstant.imgEye))), suffixConstraints: BoxConstraints(minWidth: getHorizontalSize(16.00), minHeight: getVerticalSize(14.00)), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "Please enter valid password";} return null;}, isObscureText: !controller.isShowPassword1.value)), CustomButton(width: 295, text: "lbl_update_password".tr, margin: getMargin(left: 21, top: 38, right: 20), shape: ButtonShape.RoundedBorder28, padding: ButtonPadding.PaddingAll13, onTap: onTapBtnUpdatepassword, alignment: Alignment.center)])))])))]))))))); } 
onTapColumnwelcomeback() { Get.toNamed(AppRoutes.loginScreen); } 
onTapBtnGoogle() async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            Get.snackbar('Error', 'user data is empty');
          }
        }).catchError((onError) {
            Get.snackbar('Error', onError.toString());
        });
         } 
onTapBtnFacebook() async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              Get.snackbar('Error', onError.toString());
            });
             } 
onTapRectangle541() { Get.toNamed(AppRoutes.loginScreen); } 
onTapBtnUpdatepassword() { Get.toNamed(AppRoutes.homeContainerScreen); } 
 }