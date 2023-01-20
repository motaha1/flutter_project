import 'package:final_grad_proj/localization/mylocalecontroller.dart';
import 'package:final_grad_proj/mustafa/presentation/update_pass_screen/controller/update_pass_controller.dart';
import 'package:final_grad_proj/mustafa/presentation/update_pass_screen/update_pass_screen.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../settings_screen/widgets/listlanguages_item_widget.dart';
import 'controller/settings_controller.dart';
import 'models/listlanguages_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/widgets/custom_icon_button.dart';
import 'package:final_grad_proj/widgets/custom_switch.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

bool state1 = false;
bool state2 = false;

class _SettingsScreenState extends State<SettingsScreen> {
  var Where = ['English', 'العربية'];
  String? value2;
  @override
  Widget build(BuildContext context) {
    Lang o = Get.find();
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child:
                            Stack(alignment: Alignment.centerLeft, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: CommonImageView(
                                  imagePath: ImageConstant.imgBg,
                                  height: 812.00.h,
                                  width: 375.00.w)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: size.width,
                                            margin: EdgeInsets.only(top: 36.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  CustomIconButton(
                                                      height: 30.h,
                                                      width: 30.w,
                                                      margin: EdgeInsets.only(
                                                          left: 20.w),
                                                      onTap: () {
                                                        onTapBtntf();
                                                      },
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleftBluegray500)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 19.w,
                                                          top: 5.h,
                                                          bottom: 4.h),
                                                      child: Text(
                                                          "lbl_settings".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikMedium18))
                                                ]))),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.w,
                                                top: 34.h,
                                                right: 20.w),
                                            child: Text(
                                                "msg_account_setting".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikMedium18Bluegray500))),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 19.w, top: 9.h, right: 19.w),
                                      child: Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              print('ok')  ; 
                                               Get.put(UpdatePassController());
    Get.to(UpdatePassScreen());
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                top: 14.5.h,
                                                bottom: 14.5.h,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 32.h,
                                                        width: 32.w,
                                                        variant:
                                                            IconButtonVariant
                                                                .FillRed400,
                                                        shape: IconButtonShape
                                                            .CircleBorder16,
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgLock,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 20.w,
                                                          top: 6.h,
                                                          bottom: 7.h,
                                                        ),
                                                        child: Text(
                                                          "lbl_change_password"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikLight16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 150.w,
                                                      top: 10.h,
                                                      bottom: 9.h,
                                                    ),
                                                    // child: Icon(Icons.vibration)
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      color: Colors.black54,
                                                      height: 12.00.h,
                                                      width: 7.00.w,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              onTapRowplay!();
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                top: 14.5.h,
                                                bottom: 14.5.h,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 32.h,
                                                        width: 32.w,
                                                        variant:
                                                            IconButtonVariant
                                                                .FillGreen700,
                                                        shape: IconButtonShape
                                                            .CircleBorder16,
                                                        child: CommonImageView(
                                                          color: Colors.white,
                                                          svgPath: ImageConstant
                                                              .imgUser32X32,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 15.w,
                                                          top: 6.h,
                                                          bottom: 7.h,
                                                        ),
                                                        child: Text(
                                                          "lbl_notifications"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikLight16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 195.w,
                                                      top: 10.h,
                                                      bottom: 9.h,
                                                    ),
                                                    // child: Icon(Icons.vibration)
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      color: Colors.black54,
                                                      height: 12.00.h,
                                                      width: 7.00.w,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              // onTapRowplay!();
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                top: 14.5.h,
                                                bottom: 14.5.h,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 32.h,
                                                        width: 32.w,
                                                        variant: IconButtonVariant
                                                            .FillLightblue301,
                                                        shape: IconButtonShape
                                                            .CircleBorder16,
                                                        child: CommonImageView(
                                                          color: Colors.white,
                                                          svgPath: ImageConstant
                                                              .imgGroup80,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 20.w,
                                                          top: 6.h,
                                                          bottom: 7.h,
                                                        ),
                                                        child: Text(
                                                          "lbl_statistics".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikLight16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 212.w,
                                                      top: 10.h,
                                                      bottom: 9.h,
                                                    ),
                                                    // child: Icon(Icons.vibration)
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      color: Colors.black54,
                                                      height: 12.00.h,
                                                      width: 7.00.w,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              // onTapRowplay!();
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                top: 14.5.h,
                                                bottom: 14.5.h,
                                              ),
                                              child: Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      CustomIconButton(
                                                        height: 32.h,
                                                        width: 32.w,
                                                        variant:
                                                            IconButtonVariant
                                                                .FillOrangeA200,
                                                        shape: IconButtonShape
                                                            .CircleBorder16,
                                                        child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgUser1,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 20.w,
                                                          top: 6.h,
                                                          bottom: 7.h,
                                                        ),
                                                        child: Text(
                                                          "lbl_about_us".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikLight16,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: 212.w,
                                                      top: 10.h,
                                                      bottom: 9.h,
                                                    ),
                                                    // child: Icon(Icons.vibration)
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      color: Colors.black54,
                                                      height: 12.00.h,
                                                      width: 7.00.w,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        height: 1.00.h,
                                        width: 335.00.w,
                                        margin: EdgeInsets.only(
                                            left: 19.w, top: 16.h, right: 19.w),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.tealA7005f)),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(
                                                left: 20.w,
                                                top: 31.h,
                                                right: 20.w),
                                            child: Text("lbl_more_options".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikMedium16))),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 21.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 4.h),
                                                  child: Text(
                                                      "lbl_text_messages".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikLight16)),
                                              Switch(
                                                  value: state1,
                                                  onChanged:
                                                      (bool value) async {
                                                    EasyLoading.show(
                                                        status: 'wait'.tr);
                                                    await Future.delayed(
                                                        Duration(seconds: 1));
                                                    EasyLoading.dismiss();
                                                    setState(() {
                                                      state1 = value;
                                                    });
                                                  })
                                            ])),
                                    Container(
                                        height: 1.00.h,
                                        width: 335.00.w,
                                        margin: EdgeInsets.only(
                                            left: 19.w, top: 14.h, right: 19.w),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.tealA70014)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.w, top: 14.h, right: 19.w),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 1.h, bottom: 2.h),
                                                  child: Text(
                                                      "lbl_phone_calls".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikLight16)),
                                              Switch(
                                                  value: state2,
                                                  onChanged:
                                                      (bool value) async {
                                                    EasyLoading.show(
                                                        status: 'wait'.tr);
                                                    await Future.delayed(
                                                        Duration(seconds: 1));
                                                    EasyLoading.dismiss();
                                                    setState(() {
                                                      state2 = value;
                                                    });
                                                  })
                                            ])),
                                    Container(
                                        height: 1.00.h,
                                        width: 335.00.w,
                                        margin: EdgeInsets.only(
                                            left: 19.w, top: 18.h, right: 19.w),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.tealA70014)),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 19.w, top: 10.h, right: 19.w),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 15.0.h,
                                              bottom: 15.0.w,
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "lbl_languages".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikLight16,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: 190.w,
                                                    top: 2.h,
                                                    bottom: 3.h,
                                                  ),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          Get.defaultDialog(
                                                            title:
                                                                "lbl_languages"
                                                                    .tr,
                                                            content:
                                                                DropdownButton(
                                                              // Initial Value
                                                              value: value2,
                                                              // Down Arrow Icon
                                                              icon: const Icon(Icons
                                                                  .keyboard_arrow_down),
                                                              // Array list of items
                                                              items: Where.map(
                                                                  (String
                                                                      Where) {
                                                                return DropdownMenuItem(
                                                                  value: Where,
                                                                  child: Text(
                                                                    Where,
                                                                  ),
                                                                );
                                                              }).toList(),
                                                              onChanged:
                                                                  (value) {
                                                                this.value2 = (value
                                                                    .toString());
                                                                print(value
                                                                    .toString());

                                                                if (value2 ==
                                                                    'English') {
                                                                  o.changelang(
                                                                      'en_US');
                                                                }

                                                                if (value2 ==
                                                                    'العربية') {
                                                                  o.changelang(
                                                                      'ar');
                                                                }
                                                                setState(() {
                                                                  SettingsScreen;

                                                                  //  provider.not();
                                                                });
                                                              },
                                                            ),
                                                            textCancel:
                                                                'cancel'.tr,
                                                            onCancel: () {},
                                                          );
                                                        },
                                                        child: Text(
                                                          "lbl_english".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRubikLight12,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left: 10.w,
                                                          top: 1.h,
                                                          bottom: 1.h,
                                                        ),
                                                        child: InkWell(
                                                          onTap: () {},
                                                          child:
                                                              CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            color:
                                                                Colors.black54,
                                                            height: 12.00.h,
                                                            width: 7.00.w,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      // Obx(() =>
                                      //     ListView.separated(
                                      //         physics: BouncingScrollPhysics(),
                                      //         shrinkWrap: true,
                                      //         separatorBuilder: (context, index) {
                                      //          return Container(
                                      //              height: 1.00.h,
                                      //              width: 335.00.w,
                                      //              decoration: BoxDecoration(
                                      //                  color: ColorConstant.tealA70014));
                                      //         },
                                      //         itemCount: controller.settingsModelObj.value
                                      //             .listlanguagesItemList.length,
                                      //         itemBuilder: (context, index) {
                                      //          ListlanguagesItemModel model = controller
                                      //              .settingsModelObj.value
                                      //              .listlanguagesItemList[index];
                                      //          return ListlanguagesItemWidget(model);
                                      //         }
                                      //         )
                                      // )
                                    ),
                                    Container(
                                        height: 1.00.h,
                                        width: 335.00.w,
                                        margin: EdgeInsets.only(
                                            left: 19.w,
                                            top: 20.h,
                                            right: 19.w,
                                            bottom: 50.h),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.tealA70014)),
                                  ]))
                        ]))))));
  }

  onTapRowplay() {
    Get.put(UpdatePassController());
    Get.to(UpdatePassScreen());
  }

  onTapRowplay_Change_Pas() {
    Get.toNamed(AppRoutes.updatePassScreen);
  }

  onTapBtntf() {
    Get.back();
  }
}
