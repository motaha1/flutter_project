import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/settings_controller.dart';
import '../models/listlanguages_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListlanguagesItemWidget extends StatelessWidget {
  ListlanguagesItemWidget(this.listlanguagesItemModelObj);

  ListlanguagesItemModel listlanguagesItemModelObj;

  var controller = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 18.0.h,
        bottom: 18.0.w,
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
            padding: EdgeInsets.only(
              left: 205.w,
              top: 2.h,
              bottom: 3.h,
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
                  padding: EdgeInsets.only(
                    left: 7.w,
                    top: 1.h,
                    bottom: 1.h,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgPlay,
                    height: 12.00.h,
                    width: 7.00.w,
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
