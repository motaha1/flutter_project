import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/doctor_controller.dart';
import '../models/rocmmenddoctor_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RocmmenddoctorItemWidget extends StatelessWidget {
  RocmmenddoctorItemWidget(this.rocmmenddoctorItemModelObj);

  RocmmenddoctorItemModel rocmmenddoctorItemModelObj;

  var controller = Get.find<DoctorController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: EdgeInsets.only(
            right: 20.w,
          ),
          decoration: AppDecoration.outlineBlack90014.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.00.r),
                    topRight: Radius.circular(12.00.r),
                    bottomLeft: Radius.circular(2.00.r),
                    bottomRight: Radius.circular(2.00.r),
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgRectangle508131X136,
                    height: 150.00.h,
                    width: 185.00.w,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 23.w,
                    top: 7.h,
                    right: 21.w,
                  ),
                  child: Text(
                    "lbl_dr_truluck_nik".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRubikMedium14,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 23.w,
                    top: 2.h,
                    right: 23.w,
                  ),
                  child: Text(
                    "msg_medicine_specia".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRubikLight10,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 29.w,
                    top: 6.h,
                    right: 29.w,
                    bottom: 14.h,
                  ),
                  child: CommonImageView(
                      svgPath: ImageConstant.imgMap,
                      height: 10.00.h,
                      width: 57.00.w),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
