import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

import '../../data/apiClient/User.dart';
import '../../data/apiClient/api_client.dart';
import 'controller/login_controller.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/core/utils/validation_functions.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_button.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/domain/googleauth/google_auth_helper.dart';
import 'package:final_grad_proj/wajeed/domain/facebookauth/facebook_auth_helper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
// import 'package:final_grad_proj/wajeed/presentation/forgot_p_screen/forgot_p_screen.dart';
// import 'package:auth0_flutter/auth0_flutter.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:flutter_appauth/flutter_appauth.dart';

// ignore_for_file: must_be_immutable
class MyWidgetLogin extends StatefulWidget {


  @override
  State<MyWidgetLogin> createState() => LoginScreen();
}

class LoginScreen extends State<MyWidgetLogin> {
  // Credentials? _credentials;

  // late Auth0 auth0;

  /// var scaffoldKey = GlobalKey<ScaffoldState>();
  LoginController controller = LoginController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();


  TextEditingController email1 = TextEditingController() ; 
    TextEditingController password1 = TextEditingController() ; 


  static String EmailText = "";
  String password = "";

  String passn = "";
  String passn2 = "";
  static String email = "";
  String val = "";
  String nunber_Receipt = "";

  @override
  void initState() {
    super.initState();
    // auth0 =
    //     Auth0('askcare-live.eu.auth0.com', 'coIRxROYjhrbyzYdgrE0hvnm1z5Tqw6W');
  }

  @override
  void dispose() {
    controller.msgControllerT.dispose();
    controller.msgControllerV.dispose();
    controller.msgControllerP.dispose();
    controller.msgControllerP2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    keyboardDismissBehavior:
                        ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            height: size.height,
                            width: size.width,
                            child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: CommonImageView(
                                          imagePath: ImageConstant.Background,
                                          height: 812.h,
                                          width: 375.w)),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: 
                                      
                                      
                                      
                                      Consumer<AuthProvider>(
                                        builder: (context  , provider , x) {
                                            
                                          return Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20.w,
                                                        top: 80.h,
                                                        right: 20.w),
                                                    child: Text(
                                                        "lbl_welcome_back".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikMedium24)),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 20.w,
                                                        top: 13.h,
                                                        right: 20.w),
                                                    child: Text(
                                                        "msg_your_care_await".tr,
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtRubikRegular14)),
                                                Container(
                                                    margin: EdgeInsets.only(
                                                        left: 20.w,
                                                        top: 80.h,
                                                        right: 20.w),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    27.00))),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          CustomButton(
                                                              width: 160,
                                                              text: "lbl_google".tr,
                                                              variant: ButtonVariant
                                                                  .OutlineBlack9000f,
                                                              shape: ButtonShape
                                                                  .CircleBorder25,
                                                              fontStyle: ButtonFontStyle
                                                                  .RubikLight16,
                                                              prefixWidget: Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          right:
                                                                              10),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(
                                                                                  9.09))),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGroup,
                                                                      height:
                                                                          getSize(
                                                                              25.00),
                                                                      width: getSize(
                                                                          25.00))),
                                                              onTap: onTapBtnGoogle),
                                                          CustomButton(
                                                              width: 160,
                                                              text:
                                                                  "lbl_facebook".tr,
                                                              variant: ButtonVariant
                                                                  .OutlineBlack9000f,
                                                              shape: ButtonShape
                                                                  .CircleBorder25,
                                                              fontStyle: ButtonFontStyle
                                                                  .RubikLight16,
                                                              prefixWidget: Container(
                                                                  margin:
                                                                      EdgeInsets.only(
                                                                          right:
                                                                              10),
                                                                  decoration: BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              getHorizontalSize(
                                                                                  9.09))),
                                                                  child: CommonImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgGroupWhiteA70018X18,
                                                                      height: getSize(
                                                                          25.00),
                                                                      width: getSize(
                                                                          25.00))),
                                                              onTap: onTapBtnFacebook)
                                                        ])),
                                                Expanded(
                                                  child: CustomTextFormField(
                                                      width: 335.w,
                                                      focusNode: FocusNode(),
                                                      controller: email1,
                                                      hintText:
                                                          "wajeed.mabr@gmail.com"
                                                              .tr,
                                                      margin: EdgeInsets.only(
                                                          left: 20.w,
                                                          top: 30.h,
                                                          right: 20.w),
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      suffix: InkWell(
                                                          onTap: () {},
                                                          child: Container(
                                                              margin:
                                                                  EdgeInsets.only(
                                                                      left: 20.w,
                                                                      top: 20.h,
                                                                      right: 20.w,
                                                                      bottom: 20.h),
                                                              child: CommonImageView(
                                                                  svgPath: ImageConstant
                                                                      .imgCheckmark))),
                                                      suffixConstraints: BoxConstraints(
                                                          minWidth:
                                                              getHorizontalSize(
                                                                  15.w),
                                                          minHeight:
                                                              getVerticalSize(15.h)),
                                                      // validator: (value) {
                                                      //   EmailText =
                                                      //       value.toString();
                                                      //   if (value == "" ||
                                                      //       (!isValidEmail(
                                                      //           value))) {
                                                      //     return "Please enter valid email";
                                                      //   }
                                                      //   return null;
                                                      // }
                                                      ),
                                                ),
                                                Obx(() => Expanded(
                                                      child: CustomTextFormField(
                                                          width: 335.w,
                                                          focusNode: FocusNode(),
                                                          controller:password1,
                                                          hintText: "lbl_password"
                                                              .tr,
                                                          margin: EdgeInsets.only(
                                                              left: 20.w,
                                                              top: 10.h,
                                                              right: 20.w),
                                                          textInputAction:
                                                              TextInputAction.done,
                                                          suffix: InkWell(
                                                              onTap: () {
                                                                controller
                                                                        .isShowPassword
                                                                        .value =
                                                                    !controller
                                                                        .isShowPassword
                                                                        .value;
                                                              },
                                                              child: Container(
                                                                  margin: EdgeInsets
                                                                      .only(
                                                                          left: 20
                                                                              .w,
                                                                          top: 20.h,
                                                                          right: 20
                                                                              .w,
                                                                          bottom: 20
                                                                              .h),
                                                                  child: Icon(
                                                                    controller
                                                                            .isShowPassword
                                                                            .value
                                                                        ? Icons
                                                                            .visibility_outlined
                                                                        : Icons
                                                                            .visibility_off_outlined,
                                                                  ))),
                                                          suffixConstraints:
                                                              BoxConstraints(
                                                                  minWidth:
                                                                      getHorizontalSize(
                                                                          16.00),
                                                                  minHeight:
                                                                      getVerticalSize(
                                                                          14.00)),
                                                          // validator: (value) {
                                                          //   password =
                                                          //       value.toString();
                                                          //   if (value == "" ||
                                                          //       !isValidPassword(
                                                          //           value)) {
                                                          //     return "Please enter valid password";
                                                          //   }
                                                          //   return null;
                                                          // },
                                                          isObscureText: !controller
                                                              .isShowPassword
                                                              .value),
                                                    )),
                                                CustomButton(
                                                    width: 295,
                                                    text: "lbl_login2".tr,
                                                    margin: EdgeInsets.only(
                                                        left: 20.w,
                                                        top: 20.h,
                                                        right: 20.w),
                                                    shape:
                                                        ButtonShape.RoundedBorder28,
                                                    padding:
                                                        ButtonPadding.PaddingAll13,
                                                    onTap: () async {
                                                     // print(EmailText + " " + password) ; 
                                                   //postLogin();
                                                   EasyLoading.show(status: 'loading...');
                                                   await provider.login(email1.text, password1.text) ;
                                                   await provider.rec_by_bot() ; 
                                                    EasyLoading.dismiss();

                                                      // EasyLoading.showError('email or password invalid');
                                                      // EasyLoading.dismiss();
                                                      

                                                  //EasyLoading.showToast('email or password worng');

                                                    

                                                  




                                                    }),
                                                GestureDetector(
                                                    onTap: () {
                                                      Email(context);
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left: 20.w,
                                                            top: 19.h,
                                                            right: 20.w),
                                                        child: Text(
                                                            "lbl_forgot_password"
                                                                .tr,
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRubikRegular14IndigoA400))),
                                                GestureDetector(
                                                    onTap: () {
                                                  getLogin();
                                                      
                                                  
                                                    },
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left: 20.w,
                                                            top: 123.h,
                                                            right: 20.w,
                                                            bottom: 90.h),
                                                        //child: CircularProgressIndicator(),
                                                        child: Text(
                                                            "msg_don_t_have_an_a"
                                                                .tr,
                                                            overflow: TextOverflow
                                                                .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRubikRegular14IndigoA400)))
                                              ]);
                                        }
                                      ))
                                ])))))));
  }

  onTapBtnGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapBtnFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
      if (facebookUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapBtnLogin2() {
    Get.toNamed(AppRoutes.homeContainerScreen);
  }

  onTapTxtDonthaveana() {
    Get.toNamed(AppRoutes.signUpScreen);
  }

  Email(BuildContext context1) {
    //scaffoldKey.currentState?.showBottomSheet((context) =>
    showModalBottomSheet(
      context: context1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0)),
      ),
      builder: (context) => Form(
        key: _formKey1,
        child: Container(
            width: size.width,
            height: 420,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(45.0),
                  topRight: Radius.circular(45.0)),
              color: Colors.white,
            ),
            child: Stack(alignment: Alignment.centerLeft, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      height: size.height,
                      width: size.width,
                      margin: EdgeInsets.only(bottom: 20.h),
                      child: Stack(alignment: Alignment.bottomLeft, children: [
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                                margin: EdgeInsets.only(
                                  top: 0,
                                ),
                                decoration: AppDecoration.fillWhiteA700
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL30),
                                child: Expanded(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                            child: Container(
                                                height: 5.h,
                                                width: 130.w,
                                                margin: EdgeInsets.only(
                                                    left: 19.w,
                                                    top: 21.h,
                                                    right: 19.w),
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.gray400,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            (2.71.r))))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 35.w,
                                                  top: 40.h,
                                                  right: 19.w),
                                              child: Text(
                                                  "lbl_forgot_password".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikMedium24),
                                            )),
                                        Container(
                                          width: 287.w,
                                          margin: EdgeInsets.only(
                                            left: 1.w,
                                            top: 25.h,
                                            right: 20.w,
                                          ),
                                          child: Text("msg_enter_your_emai".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRubikRegular14),
                                        ),
                                        CustomTextFormField(
                                            width: 335.w,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.msgControllerT,
                                            hintText: "lbl_email".tr,
                                            margin: EdgeInsets.only(
                                              left: 20.w,
                                              top: 40.h,
                                              right: 20.w,
                                            ),
                                            textInputAction:
                                                TextInputAction.done,
                                            alignment: Alignment.center,
                                            validator: (value) {
                                              email = value.toString();
                                              if (value == "" ||
                                                  !isValidEmail(value)) {
                                                return "Please enter valid email";
                                              }
                                              return null;
                                            }),
                                        CustomButton(
                                            width: 295.w,
                                            text: "lbl_continue".tr,
                                            margin: EdgeInsets.only(
                                              left: 21.w,
                                              top: 15.h,
                                              right: 20.w,
                                              bottom: 45.h,
                                            ),
                                            shape: ButtonShape.RoundedBorder28,
                                            onTap: () {
                                              if (_formKey1.currentState!
                                                  .validate()) {
                                                Get.snackbar(
                                                    'Error', "Processing Data");
                                              }
                                              if (email == "") {
                                                Get.snackbar('Error',
                                                    "Please retry,Email has not been entered yet ");
                                              } else if (email == "w") {
                                                setState(() => controller
                                                    .msgControllerT
                                                    .clear());
                                                Navigator.of(context).pop();
                                                vfecode(context);
                                              } else {
                                                Get.snackbar(
                                                    'Error',
                                                    "Please retry, the email you entered "
                                                        """ "$email" """
                                                        " is incorrect");
                                              }
                                            })
                                      ]),
                                )))
                      ])))
            ])),
      ),
    );
  }

  vfecode(BuildContext context2) {
    //scaffoldKey.currentState?.showBottomSheet((context) =>
    showModalBottomSheet(
        context: context2,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45.0),
            topRight: Radius.circular(45.0),
          ),
        ),
        builder: (context) => Container(
            width: size.width,
            height: 400.h,
            child: Stack(alignment: Alignment.bottomLeft, children: [
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                                child: Container(
                                    height: getVerticalSize(5.00),
                                    width: getHorizontalSize(130.00),
                                    margin: EdgeInsets.only(
                                        left: 19.w, top: 21.h, right: 19.w),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.gray400,
                                        borderRadius: BorderRadius.circular(
                                            getHorizontalSize(2.71))))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 35.w, top: 59.h, right: 19.w),
                                    child: Text("msg_enter_4_digits".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRubikMedium24))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: getHorizontalSize(287.00),
                                    margin: EdgeInsets.only(
                                        left: 35.w, top: 17.h, right: 20.w),
                                    child: Text("msg_enter_the_4_dig".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRubikRegular14))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  width: size.width,
                                  height: 100.h,
                                  padding: EdgeInsets.only(
                                      left: 24.w, top: 40.h, right: 15.w),
                                  child: PinCodeTextField(
                                    appContext: context,
                                    length: 4,
                                    obscureText: false,
                                    obscuringCharacter: '*',
                                    keyboardType: TextInputType.number,
                                    autoDismissKeyboard: true,
                                    enableActiveFill: false,
                                    onChanged: (value) {
                                      print(value);
                                    },
                                    pinTheme: PinTheme(
                                      fieldWidth: getHorizontalSize(40.00),
                                      shape: PinCodeFieldShape.underline,
                                      selectedFillColor:
                                          ColorConstant.bluegray90019,
                                      activeFillColor:
                                          ColorConstant.bluegray90019,
                                      inactiveFillColor:
                                          ColorConstant.bluegray90019,
                                    ),
                                    onCompleted: (value) {
                                      nunber_Receipt = value.toString();
                                      if (nunber_Receipt == "") {
                                        Get.snackbar('Error',
                                            "Please retry,Number has not been entered yet ");
                                        setState(() =>
                                            controller.msgControllerV.clear());
                                      } else if (nunber_Receipt == "2222") {
                                        nunber_Receipt = "";
                                        setState(() =>
                                            controller.msgControllerV.clear());
                                        Navigator.of(context).pop();
                                        ResetPass(context);
                                      } else {
                                        Get.snackbar(
                                            'Error',
                                            "Please retry, the Number you entered "
                                                """ "$nunber_Receipt" """
                                                " is incorrect");
                                      }
                                    },
                                  ),
                                )),
                            CustomButton(
                                width: 110.w,
                                text: "lbl_continue".tr,
                                margin: EdgeInsets.only(
                                    left: 20.w, top: 25.h, right: 20.w),
                                shape: ButtonShape.RoundedBorder28,
                                onTap: () {
                                  if (nunber_Receipt == "") {
                                    Get.snackbar('Error',
                                        "Please retry,Number has not been entered yet ");
                                    setState(() =>
                                        controller.msgControllerV.clear());
                                  } else if (nunber_Receipt == "2222") {
                                    nunber_Receipt = "";
                                    setState(() =>
                                        controller.msgControllerV.clear());
                                    Navigator.of(context).pop();
                                    ResetPass(context);
                                  } else {
                                    Get.snackbar(
                                        'Error',
                                        "Please retry, the Number you entered "
                                            """ "$nunber_Receipt" """
                                            " is incorrect");
                                  }
                                },
                                alignment: Alignment.topCenter),
                            Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      Email(context);
                                    },
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.w,
                                            top: 14.h,
                                            right: 19.w,
                                            bottom: 10.h),
                                        child: Text("lbl_resend_code".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtOverpassRegular14IndigoA400
                                                .copyWith(height: 1.00)))))
                          ]))),
            ])));
  }

  ResetPass(BuildContext context3) {
    // scaffoldKey.currentState?.showBottomSheet((context) => Container(
    showModalBottomSheet(
        context: context3,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45.0),
            topRight: Radius.circular(45.0),
          ),
        ),
        builder: (context) => Form(
              key: _formKey2,
              child: Container(
                  width: size.width,
                  height: 445.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            margin: EdgeInsets.only(top: 0),
                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL30),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                      child: Container(
                                          height: getVerticalSize(5.00),
                                          width: getHorizontalSize(130.00),
                                          margin: EdgeInsets.only(
                                              left: 19.w,
                                              top: 21.h,
                                              right: 19.w),
                                          decoration: BoxDecoration(
                                              color: ColorConstant.gray400,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      getHorizontalSize(
                                                          2.70))))),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 30.w,
                                              top: 30.h,
                                              right: 10.w),
                                          child: Text("lbl_reset_password".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtRubikMedium24))),
                                  Container(
                                      width: getHorizontalSize(313.00),
                                      margin: EdgeInsets.only(
                                          left: 10.w, top: 17.h, right: 10.w),
                                      child: Text("msg_set_the_new_pas".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRubikRegular14)),
                                  Obx(
                                    () => CustomTextFormField(
                                        width: 335,
                                        focusNode: FocusNode(),
                                        controller: controller.msgControllerP,
                                        hintText: "lbl_new_password".tr,
                                        margin: EdgeInsets.only(
                                            left: 1.w, top: 27.h),
                                        alignment: Alignment.center,
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword.value =
                                                  !controller
                                                      .isShowPassword.value;
                                            },
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 30.w,
                                                    top: 20.h,
                                                    right: 24.w,
                                                    bottom: 20.h),
                                                child: Icon(
                                                  controller.isShowPassword.value
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                ))),
                                        suffixConstraints: BoxConstraints(
                                            minWidth: getHorizontalSize(16.00),
                                            minHeight: getVerticalSize(14.00)),
                                        validator: (value) {
                                          passn = value.toString();
                                          if (value == "" ||
                                              !isValidPassword(value)) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        isObscureText:
                                            !controller.isShowPassword.value),
                                  ),
                                  Obx(
                                    () => CustomTextFormField(
                                        width: 335,
                                        focusNode: FocusNode(),
                                        controller: controller.msgControllerP2,
                                        hintText: "msg_re_enter_passwo".tr,
                                        margin: EdgeInsets.only(
                                            left: 1.w, top: 18.h, bottom: 10),
                                        textInputAction: TextInputAction.done,
                                        alignment: Alignment.center,
                                        suffix: InkWell(
                                            onTap: () {
                                              controller.isShowPassword1.value =
                                                  !controller
                                                      .isShowPassword1.value;
                                            },
                                            child: Container(
                                                margin: EdgeInsets.only(
                                                    left: 30.w,
                                                    top: 20.h,
                                                    right: 24.w,
                                                    bottom: 20.h),
                                                child: Icon(
                                                  controller.isShowPassword.value
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                ))),
                                        suffixConstraints: BoxConstraints(
                                            minWidth: getHorizontalSize(16.00),
                                            minHeight: getVerticalSize(14.00)),
                                        validator: (value) {
                                          passn2 = value.toString();
                                          if (value == "" ||
                                              !isValidPassword(value)) {
                                            return "Please enter valid password";
                                          }
                                          return null;
                                        },
                                        isObscureText:
                                            !controller.isShowPassword1.value),
                                  ),
                                  CustomButton(
                                      width: 295.w,
                                      text: "lbl_update_password".tr,
                                      margin: EdgeInsets.only(
                                          left: 21.w,
                                          top: 5.h,
                                          right: 20.w,
                                          bottom: 45.h),
                                      shape: ButtonShape.RoundedBorder28,
                                      padding: ButtonPadding.PaddingAll13,
                                      onTap: () {
                                        if (_formKey2.currentState!
                                            .validate()) {
                                          Get.snackbar(
                                              'Error', "Processing Data");
                                        } else if (passn == "" &&
                                            passn2 == "") {
                                          Get.snackbar('Error',
                                              "Please retry, Password has not been entered yet ");
                                          setState(() => controller
                                              .msgControllerP
                                              .clear());
                                        } else if (passn == passn2) {
                                          setState(() => controller
                                              .msgControllerP
                                              .clear());
                                          setState(() => controller
                                              .msgControllerP2
                                              .clear());
                                          Get.toNamed(
                                              AppRoutes.homeContainerScreen);
                                        } else {
                                          setState(() => controller
                                              .msgControllerP
                                              .clear());
                                          setState(() => controller
                                              .msgControllerP2
                                              .clear());
                                          Get.snackbar('Error',
                                              "Please retry, the password you entered does not match");
                                        }
                                      },
                                      alignment: Alignment.center)
                                ])))
                  ])),
            ));
  }

  void postLogin() async {
    // debugPrint(EmailText);
    // debugPrint(password);
    // if (EmailText == "") {
    //   debugPrint("Not Enter your email");
    // } else {
    //   try{
    //   _credentials = await auth0.api.login(
    //       connectionOrRealm: 'Username-Password-Authentication',
    //       password: password,
    //       usernameOrEmail: EmailText);
    //       //debugPrint(_credentials?.accessToken);
    //       onTapBtnLogin2();
    //   }catch(e)
    //   {
    //      debugPrint("wrong");

    //   }
    // }

    // if(_credentials. )

    //_credentials = await auth0.credentialsManager.credentials();
    // debugPrint(_credentials?.accessToken);
  }

  void getLogin() async {
    var response = await ApiClient().get('/users').catchError((err) {});
    if (response == null) return;
    debugPrint('successful:');

    var users = userFromJson(response);
    debugPrint('Users count: ' + users.length.toString());
    debugPrint('Users count: ' + users[10].name.toString());
  }
}
