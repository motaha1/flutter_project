import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/settings_controller.dart';
import '../models/listlock_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:final_grad_proj/mustafa/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListlockItemWidget extends StatelessWidget {
  ListlockItemWidget(this.listlockItemModelObj, {this.onTapRowplay});

  ListlockItemModel listlockItemModelObj;

  var controller = Get.find<SettingsController>();

  VoidCallback? onTapRowplay;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowplay!();
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: 14.5.h,
          bottom: 14.5.h,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomIconButton(
                  height: 32.h,
                  width: 32.w,
                  variant: IconButtonVariant.FillRed400,
                  shape: IconButtonShape.CircleBorder16,
                  child: CommonImageView(
                    svgPath: ImageConstant.imgLock,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    top: 6.h,
                    bottom: 7.h,
                  ),
                  child: Text(
                    "lbl_change_password".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRubikLight16,
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
                svgPath: ImageConstant.imgPlay,
                height: 12.00.h,
                width: 7.00.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
