import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/home_controller.dart';
import '../models/specialist_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SpecialistItemWidget extends StatelessWidget {
  SpecialistItemWidget(this.specialistItemModelObj);

  SpecialistItemModel specialistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(
            right: 15.w,
          ),
          decoration: AppDecoration.outlineBlack90014.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 6.h,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        12.00.r,
                      ),
                      topRight: Radius.circular(
                        12.00.r,
                      ),
                      bottomLeft: Radius.circular(
                        2.00.r,
                      ),
                      bottomRight: Radius.circular(
                        2.00.r,
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgRectangle508,
                      height: 180.00.h,
                      width: 190.00.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 28.w,
                  top: 14.h,
                  right: 28.w,
                ),
                child: Text(
                  "msg_dr_fillerup_gr".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikMedium18,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 28.w,
                  top: 2.h,
                  right: 28.w,
                ),
                child: Text(
                  "msg_medicine_specia".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikLight12Bluegray500cc,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 28.w,
                  top: 7.h,
                  right: 28.w,
                  bottom: 6.h,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgMap,
                  height: 12.00.h,
                  width: 72.00.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
