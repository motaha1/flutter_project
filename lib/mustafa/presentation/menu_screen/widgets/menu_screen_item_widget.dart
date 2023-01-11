import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/menu_controller.dart';
import '../models/menu_screen_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuScreenItemWidget extends StatelessWidget {
  MenuScreenItemWidget(this.menuScreenItemModelObj);

  MenuScreenItemModel menuScreenItemModelObj;

  var controller = Get.find<MenuController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 29.5.h,
        right: 1.w,
        bottom: 29.5.h,
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
                height: 23.00.h,
                width: 20.00.w,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 9.w,
                  top: 1.h,
                  bottom: 3.h,
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
            padding: EdgeInsets.only(
              left: 95.w,
              top: 4.h,
              bottom: 4.h,
            ),
            child: CommonImageView(
              svgPath: ImageConstant.imgArrowright,
              height: 13.00.h,
              width: 7.00.w,
            ),
          ),
        ],
      ),
    );
  }
}
