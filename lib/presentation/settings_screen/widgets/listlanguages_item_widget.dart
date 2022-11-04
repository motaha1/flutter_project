import '../controller/settings_controller.dart';
import '../models/listlanguages_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListlanguagesItemWidget extends StatelessWidget {
  ListlanguagesItemWidget(this.listlanguagesItemModelObj);

  ListlanguagesItemModel listlanguagesItemModelObj;

  var controller = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 18.0,
        bottom: 18.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "lbl_languages".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtRubikLight16,
          ),
          Padding(
            padding: getPadding(
              left: 205,
              top: 2,
              bottom: 3,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "lbl_english".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikLight12,
                ),
                Padding(
                  padding: getPadding(
                    left: 7,
                    top: 1,
                    bottom: 1,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgPlay,
                    height: getVerticalSize(
                      12.00,
                    ),
                    width: getHorizontalSize(
                      7.00,
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
