import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillTeal50 => BoxDecoration(
        color: ColorConstant.teal50,
      );
  static BoxDecoration get fillIndigoA400 => BoxDecoration(
        color: ColorConstant.indigoA400,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get outlineBlack90014 => BoxDecoration(
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
  static BoxDecoration get fillGray900a1 => BoxDecoration(
        color: ColorConstant.gray900A1,
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
  static BoxDecoration get fillCyan600 => BoxDecoration(
        color: ColorConstant.cyan600,
      );
  static BoxDecoration get fillTealA70014 => BoxDecoration(
        color: ColorConstant.tealA70014,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillTealA702 => BoxDecoration(
        color: ColorConstant.tealA702,
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder16 = BorderRadius.circular(
    getHorizontalSize(
      16.00,
    ),
  );

  static BorderRadius circleBorder78 = BorderRadius.circular(
    getHorizontalSize(
      78.00,
    ),
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

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius customBorderTL8 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        8.00,
      ),
    ),
  );
}
