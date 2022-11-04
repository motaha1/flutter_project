import '../controller/favourite_specialists_controller.dart';
import '../models/listellipse141_six_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listellipse141SixItemWidget extends StatelessWidget {
  Listellipse141SixItemWidget(this.listellipse141SixItemModelObj);

  Listellipse141SixItemModel listellipse141SixItemModelObj;

  var controller = Get.find<FavouriteSpecialistsController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          margin: getMargin(
            right: 15,
          ),
          decoration: AppDecoration.outlineBlack9000f1.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  left: 31,
                  top: 25,
                  right: 31,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      42.00,
                    ),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse1414,
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
              Padding(
                padding: getPadding(
                  left: 31,
                  top: 11,
                  right: 31,
                ),
                child: Text(
                  "lbl_dr_shouey".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRubikMedium15,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 31,
                  top: 4,
                  right: 30,
                  bottom: 24,
                ),
                child: Text(
                  "msg_specalist_medic".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRubikRegular12IndigoA400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
