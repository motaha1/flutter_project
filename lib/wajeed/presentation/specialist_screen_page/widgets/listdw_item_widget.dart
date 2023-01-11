import '../controller/specialist_screen_controller.dart';
import '../models/listdw_item_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_button.dart';

// ignore: must_be_immutable
class ListdwItemWidget extends StatelessWidget {
  ListdwItemWidget(this.listdwItemModelObj);

  ListdwItemModel listdwItemModelObj;

  var controller = Get.find<SpecialistScreenController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 7.0,
        right: 1,
        bottom: 7.0,
      ),
      // decoration: AppDecoration.outlineBlue30026.copyWith(
      //   borderRadius: BorderRadiusStyle.roundedBorder18,
      // ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            margin: getMargin(
              left: 11,
              top: 8,
              bottom: 7,
            ),
            // decoration: AppDecoration.outlineTeal60099.copyWith(
            //   borderRadius: BorderRadiusStyle.roundedBorder24,
            // ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomButton(
                  width: 42,
                  text: "lbl_dw".tr,
                  margin: getMargin(
                    all: 3,
                  ),
                  // variant: ButtonVariant.FillTeal6003f,
                  // shape: ButtonShape.CircleBorder21,
                  // padding: ButtonPadding.PaddingAll7,
                  // fontStyle: ButtonFontStyle.PoppinsRegular15,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 15,
              top: 13,
              right: 23,
              bottom: 8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    255.00,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 5,
                        ),
                        child: Text(
                          "lbl_denzel_white".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          //style: AppStyle.txtPoppinsMedium14,
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 2,
                        ),
                        padding: getPadding(
                          left: 7,
                          top: 1,
                          right: 7,
                          bottom: 1,
                        ),
                        // decoration: AppDecoration.txtFillTeal60026.copyWith(
                        //   borderRadius: BorderRadiusStyle.txtRoundedBorder8,
                        // ),
                        child: Text(
                          "lbl_9_00_am".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,

                          ///style: AppStyle.txtPoppinsRegular11,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 1,
                    right: 10,
                  ),
                  child: Text(
                    "lbl_report".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    // style: AppStyle.txtPoppinsRegular11,
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
