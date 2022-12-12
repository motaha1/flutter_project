import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:final_grad_proj/gsk_2022/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get gradientIndigoA40099WhiteA70099 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5042016749202367.h,
            0.9999999529700284.w,
          ),
          end: Alignment(
            0.5042016734942809.h,
            -4.7029642180618225e-8.w,
          ),
          colors: [
            ColorConstant.indigoA40099,
            ColorConstant.whiteA70099,
          ],
        ),
      );
  static BoxDecoration get fillTeal50 => BoxDecoration(
        color: ColorConstant.teal50,
      );
  static BoxDecoration get fillIndigoA400 => BoxDecoration(
        color: ColorConstant.indigoA400,
      );
  static BoxDecoration get outlineBluegray5001e => BoxDecoration(
        border: Border.all(
          color: ColorConstant.bluegray5001e,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineBlack90014 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90014,
            spreadRadius: (2.00.r),
            blurRadius: (2.00.r),
            offset: Offset(
              0.h,
              0.w,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900141 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90014,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBluegray4001e => BoxDecoration(
        border: Border.all(
          color: ColorConstant.bluegray4001e,
          width: (1.00.w),
        ),
      );
  static BoxDecoration get fillIndigoA40014 => BoxDecoration(
        color: ColorConstant.indigoA40014,
      );
  static BoxDecoration get outlineBlack9000f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9000f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get gradientWhiteA70099IndigoA40099 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5.h,
            -3.0616171314629196e-17.w,
          ),
          end: Alignment(
            0.5.h,
            0.9999999999999999.w,
          ),
          colors: [
            ColorConstant.whiteA70099,
            ColorConstant.indigoA40099,
          ],
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(16.00.r);

  static BorderRadius circleBorder78 = BorderRadius.circular(
    getHorizontalSize(
      78.00,
    ),
  );

  static BorderRadius roundedBorder6 = BorderRadius.circular(
    (6.00.r),
  );

  static BorderRadius customBorderTL45 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        45.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        45.00,
      ),
    ),
  );

  static BorderRadius circleBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30.00,
    ),
  );

// import
  static BorderRadius roundedBorder10 = BorderRadius.circular(
    10.00.r,
  );
}
