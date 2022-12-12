import '../three_screen/three_screen.dart';
import 'controller/one_controller.dart';
import 'models/one_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/appbar_stack.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/appbar_title.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/custom_button.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class OnePage extends StatelessWidget {
  OneController controller = Get.put(OneController(OneModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          height: getVerticalSize(
            711.00,
          ),
          width: size.width,
          decoration: AppDecoration.fillWhiteA700,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: CommonImageView(
                  imagePath: ImageConstant.imgBg,
                  height: getVerticalSize(
                    785.00,
                  ),
                  width: getHorizontalSize(
                    375.00,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomAppBar(
                      height: getVerticalSize(
                        56.00,
                      ),
                      leadingWidth: 50,
                      leading: AppbarStack(
                        margin: getMargin(
                          left: 20,
                        ),
                      ),
                      title: AppbarTitle(
                        text: "lbl_new_appointment".tr,
                        margin: getMargin(
                          left: 19,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: getPadding(
                            top: 34,
                            bottom: 30,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  margin: getMargin(
                                    left: 20,
                                    right: 20,
                                  ),
                                  decoration:
                                      AppDecoration.outlineBlack90014.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 18,
                                          bottom: 18,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              8.00,
                                            ),
                                          ),
                                          child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle506,
                                            height: getVerticalSize(
                                              87.00,
                                            ),
                                            width: getHorizontalSize(
                                              92.00,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 13,
                                          top: 27,
                                          bottom: 53,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: getPadding(
                                                  right: 3,
                                                ),
                                                child: Text(
                                                  "msg_dr_pediatricia".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikMedium18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 5,
                                              ),
                                              child: Text(
                                                "msg_specialist_card".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle.txtRubikLight14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 49,
                                          top: 25,
                                          right: 12,
                                          bottom: 81,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgFavorite,
                                          height: getVerticalSize(
                                            17.00,
                                          ),
                                          width: getHorizontalSize(
                                            19.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 20,
                                  top: 30,
                                  right: 20,
                                ),
                                child: Text(
                                  "lbl_appointment_for".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRubikMedium16,
                                ),
                              ),
                              CustomTextFormField(
                                width: 335,
                                focusNode: FocusNode(),
                                controller: controller.group681Controller,
                                hintText: "lbl_patient_name".tr,
                                margin: getMargin(
                                  left: 20,
                                  top: 20,
                                  right: 20,
                                ),
                                alignment: Alignment.center,
                              ),
                              CustomTextFormField(
                                width: 335,
                                focusNode: FocusNode(),
                                controller: controller.group682Controller,
                                hintText: "lbl_contact_number".tr,
                                margin: getMargin(
                                  left: 20,
                                  top: 18,
                                  right: 20,
                                ),
                                variant:
                                    TextFormFieldVariant.OutlineBluegray5001e,
                                shape: TextFormFieldShape.RoundedBorder10,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.center,
                              ),
                              CustomButton(
                                width: 295,
                                onTap: () {
                                  Get.to(ThreeScreen());
                                },
                                text: "lbl_next".tr,
                                margin: getMargin(
                                  left: 20,
                                  top: 236,
                                  right: 20,
                                ),
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
