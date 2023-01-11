import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/profile_controller.dart';
import '../models/profile_screen_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileScreenItemWidget extends StatelessWidget {
  ProfileScreenItemWidget(this.profileScreenItemModelObj);

  ProfileScreenItemModel profileScreenItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 6.0.h, bottom: 6.0.h),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20.w,
              top: 9.h,
              right: 20.w,
            ),
            child: Text(
              "lbl_name".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRubikMedium10,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20.w,
                top: 2.h,
                right: 20.w,
                bottom: 13.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 5.h,
                    ),
                    child: Text(
                      "lbl_abdullah_mamun".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRubikLight16,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 9.h,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgEdit,
                      height: 14.00.h,
                      width: 15.00.w,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
