import '../controller/favourite_specialists_controller.dart';
import '../models/gridfavorite_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
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
                padding: getPadding(
                  left: 10,
                  top: 10,
                  right: 10,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgFavorite15X16,
                  height: getVerticalSize(
                    15.00,
                  ),
                  width: getHorizontalSize(
                    16.00,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 10,
                  right: 10,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      42.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse14184X84,
                    height: getSize(
                      84.00,
                    ),
                    width: getSize(
                      84.00,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 10,
                  top: 11,
                  right: 10,
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
                padding: getPadding(
                  left: 10,
                  top: 4,
                  right: 10,
                  bottom: 24,
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
