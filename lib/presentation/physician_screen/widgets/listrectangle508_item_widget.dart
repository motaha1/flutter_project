import '../controller/physician_controller.dart';
import '../models/listrectangle508_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle508ItemWidget extends StatelessWidget {
  Listrectangle508ItemWidget(this.listrectangle508ItemModelObj);

  Listrectangle508ItemModel listrectangle508ItemModelObj;

  var controller = Get.find<PhysicianController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 7.0,
        right: 3,
        bottom: 7.0,
      ),
      decoration: AppDecoration.outlineBlack900141.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 9,
              top: 11,
              bottom: 11,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
              child: CommonImageView(
                imagePath: ImageConstant.imgRectangle506,
                height: getSize(
                  82.00,
                ),
                width: getSize(
                  82.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              72.00,
            ),
            width: getHorizontalSize(
              217.00,
            ),
            margin: getMargin(
              left: 15,
              top: 16,
              right: 9,
              bottom: 16,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      right: 3,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 4,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_pediatrician".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRubikMedium18,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 5,
                            right: 10,
                          ),
                          child: Text(
                            "msg_specialist_card".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRubikLight14,
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            213.00,
                          ),
                          margin: getMargin(
                            top: 9,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 5,
                                  bottom: 3,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgMap,
                                  height: getVerticalSize(
                                    10.00,
                                  ),
                                  width: getHorizontalSize(
                                    80.00,
                                  ),
                                ),
                              ),
                              Container(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_2_4".tr,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray901,
                                          fontSize: getFontSize(
                                            16,
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
                                            16,
                                          ),
                                          fontFamily: 'PT Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl2".tr,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray500Cc,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Rubik',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl_2475_views".tr,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray500Cc,
                                          fontSize: getFontSize(
                                            12,
                                          ),
                                          fontFamily: 'Rubik',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl3".tr,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray500Cc,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Rubik',
                                          fontWeight: FontWeight.w400,
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
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: getPadding(
                      left: 10,
                      right: 3,
                      bottom: 10,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgFavorite8X10,
                      height: getVerticalSize(
                        15.00,
                      ),
                      width: getHorizontalSize(
                        19.00,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
