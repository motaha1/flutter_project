import '../controller/settings_controller.dart';
import '../models/listlock_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/widgets/custom_icon_button.dart';
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
        padding: getPadding(
          top: 14.5,
          bottom: 14.5,
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
                  height: 32,
                  width: 32,
                  variant: IconButtonVariant.FillRed400,
                  shape: IconButtonShape.CircleBorder16,
                  child: CommonImageView(
                    svgPath: ImageConstant.imgLock,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 20,
                    top: 6,
                    bottom: 7,
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
              padding: getPadding(
                left: 150,
                top: 10,
                bottom: 9,
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
    );
  }
}
