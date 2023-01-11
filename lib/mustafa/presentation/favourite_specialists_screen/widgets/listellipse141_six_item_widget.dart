import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/favourite_specialists_controller.dart';
import '../models/listellipse141_six_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
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
          margin: EdgeInsets.only(
            right: 15.w,
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
                padding: EdgeInsets.only(
                  left: 31.w,
                  top: 25.h,
                  right: 31.w,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    42.00.h,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse1414,
                    height: 84.00.h,
                    width: 84.00.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 310.w,
                  top: 11.h,
                  right: 31.w,
                ),
                child: Text(
                  "lbl_dr_shouey".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtRubikMedium15,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 31.w,
                  top: 4.h,
                  right: 30.w,
                  bottom: 24.h,
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
