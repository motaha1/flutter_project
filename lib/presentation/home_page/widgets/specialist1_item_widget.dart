import '../controller/home_controller.dart';
import '../models/specialist1_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Specialist1ItemWidget extends StatelessWidget {
  Specialist1ItemWidget(this.specialist1ItemModelObj);

  Specialist1ItemModel specialist1ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 13,
            bottom: 1,
          ),
          decoration: AppDecoration.outlineBlack9000f1.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: getPadding(
                  left: 9,
                  top: 6,
                  right: 9,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: getPadding(
                        bottom: 2,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgFavorite,
                        height: getVerticalSize(
                          8.00,
                        ),
                        width: getHorizontalSize(
                          10.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 38,
                        top: 1,
                        bottom: 2,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgStar,
                        height: getSize(
                          9.00,
                        ),
                        width: getSize(
                          9.00,
                        ),
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        left: 6,
                        top: 1,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_3_72".tr,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: getFontSize(
                                  10,
                                ),
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: " ",
                              style: TextStyle(
                                color: ColorConstant.bluegray500,
                                fontSize: getFontSize(
                                  10,
                                ),
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 19,
                  top: 8,
                  right: 19,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      27.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse141,
                    height: getSize(
                      54.00,
                    ),
                    width: getSize(
                      54.00,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 19,
                  top: 10,
                  right: 19,
                ),
                child: Text(
                  "lbl_dr_crick".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikMedium12,
                ),
              ),
              Container(
                margin: getMargin(
                  left: 19,
                  top: 3,
                  right: 19,
                  bottom: 6,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl".tr,
                        style: TextStyle(
                          color: ColorConstant.indigoA400,
                          fontSize: getFontSize(
                            9,
                          ),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_25_00_hours2".tr,
                        style: TextStyle(
                          color: ColorConstant.bluegray500,
                          fontSize: getFontSize(
                            9,
                          ),
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
