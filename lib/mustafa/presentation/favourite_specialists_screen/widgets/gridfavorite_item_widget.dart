import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/favourite_specialists_controller.dart';
import '../models/gridfavorite_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GridfavoriteItemWidget extends StatelessWidget {
  GridfavoriteItemWidget(this.gridfavoriteItemModelObj);

  GridfavoriteItemModel gridfavoriteItemModelObj;

  var controller = Get.find<FavouriteSpecialistsController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        decoration: AppDecoration.outlineBlack9000f1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder6,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.w,
                  top: 10.h,
                  right: 10.w,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgFavorite15X16,
                  height: 15.00.h,
                  width: 16.00.w,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.w,
                  right: 10.w,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    42.00.r,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse14184X84,
                    height: 84.00.h,
                    width: 84.00.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.w,
                  top: 11.h,
                  right: 10.w,
                ),
                child: Text(
                  "lbl_dr_shouey".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikMedium15,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 10.w,
                  top: 4.h,
                  right: 10.w,
                  bottom: 24.h,
                ),
                child: Text(
                  "msg_specalist_cardi".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikRegular12IndigoA400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
