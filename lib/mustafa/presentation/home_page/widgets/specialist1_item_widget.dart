import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/home_controller.dart';
import '../models/specialist1_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Specialist1ItemWidget extends StatelessWidget {
  Specialist1ItemWidget(this.specialist1ItemModelObj);

  Specialist1ItemModel specialist1ItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: EdgeInsets.only(
            right: 13.w,
            bottom: 1.h,
          ),
          decoration: AppDecoration.outlineBlack9000f1.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder6,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 9.w,
                  top: 6.h,
                  right: 9.w,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 2.h,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgFavorite,
                        height: 8.00.h,
                        width: 10.00.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 38.w,
                        top: 1.h,
                        bottom: 2.h,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgStar,
                        height: 9.00.h,
                        width: 9.00.w,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 6.w,
                        top: 1.h,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_3_72".tr,
                              style: TextStyle(
                                color: ColorConstant.black900,
                                fontSize: 10.00.sp,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: " ",
                              style: TextStyle(
                                color: ColorConstant.bluegray500,
                                fontSize: 10.00.sp,
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.w,
                  top: 8.h,
                  right: 19.w,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                    27.00.r,
                  ),
                  child: CommonImageView(
                    imagePath: ImageConstant.imgEllipse141,
                    height: 54.00.h,
                    width: 54.00.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 19.w,
                  top: 10.h,
                  right: 19.w,
                ),
                child: Text(
                  "lbl_dr_crick".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikMedium12,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 19.w,
                  top: 3.h,
                  right: 19.w,
                  bottom: 6.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl".tr,
                        style: TextStyle(
                          color: ColorConstant.indigoA400,
                          fontSize: 9.00.sp,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_25_00_hours2".tr,
                        style: TextStyle(
                          color: ColorConstant.bluegray500,
                          fontSize: 9.00.sp,
                          fontFamily: 'Rubik',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
