import '../controller/search_nurse_controller.dart';
import '../models/listrectangle512_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle512ItemWidget extends StatelessWidget {
  Listrectangle512ItemWidget(this.listrectangle512ItemModelObj);

  Listrectangle512ItemModel listrectangle512ItemModelObj;

  var controller = Get.find<SearchNurseController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 6.5,
        bottom: 6.5,
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
              left: 12,
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
          Padding(
            padding: getPadding(
              left: 15,
              top: 16,
              right: 9,
              bottom: 16,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      209.00,
                    ),
                    margin: getMargin(
                      left: 4,
                      right: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "lbl_pediatrician".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRubikMedium18,
                        ),
                        Padding(
                          padding: getPadding(
                            bottom: 4,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgFavorite8X10,
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
                    top: 7,
                    right: 10,
                  ),
                  child: Text(
                    "msg_specialist_card".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRubikLight14,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: getHorizontalSize(
                      214.00,
                    ),
                    margin: getMargin(
                      top: 7,
                      right: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 4,
                            bottom: 4,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgMap,
                            height: getVerticalSize(
                              12.00,
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
                                  text: "lbl_2_8".tr,
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
                                  text: "lbl_2821".tr,
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
                                  text: " ",
                                  style: TextStyle(
                                    color: ColorConstant.bluegray500Cc,
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Rubik',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: "lbl_views".tr,
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
