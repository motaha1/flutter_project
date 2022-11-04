import '../controller/menu_controller.dart';
import '../models/menu_screen_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuScreenItemWidget extends StatelessWidget {
  MenuScreenItemWidget(this.menuScreenItemModelObj);

  MenuScreenItemModel menuScreenItemModelObj;

  var controller = Get.find<MenuController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 29.5,
        right: 1,
        bottom: 29.5,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonImageView(
                svgPath: ImageConstant.imgUser,
                height: getVerticalSize(
                  23.00,
                ),
                width: getHorizontalSize(
                  20.00,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 9,
                  top: 1,
                  bottom: 3,
                ),
                child: Text(
                  "lbl_my_profile".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtOverpassRomanRegular14,
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              left: 95,
              top: 4,
              bottom: 4,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgArrowright,
              height: getVerticalSize(
                13.00,
              ),
              width: getHorizontalSize(
                7.00,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
