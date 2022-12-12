import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/core/app_export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class AppbarStack extends StatelessWidget {
  AppbarStack({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.whiteA700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Container(
            height: 30.h,
            width: 30.00.w,
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 12.w,
                      top: 9.h,
                      right: 11.w,
                      bottom: 8.h,
                    ),
                    child: InkWell(
                      onTap: () {
                        // onTapImgArrowleft();
                      },
                      child: CommonImageView(
                        svgPath: ImageConstant.imgArrowleft,
                        height: 12.00.h,
                        width: (7.00.w),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
