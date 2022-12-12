import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/core/app_export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.prefixWidget,
      this.suffixWidget,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  Widget? prefixWidget;

  Widget? suffixWidget;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            prefixWidget ?? SizedBox(),
            Text(
              text ?? "",
              textAlign: TextAlign.center,
              style: _setFontStyle(),
            ),
            suffixWidget ?? SizedBox(),
          ],
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll7:
        return EdgeInsets.only(left: 7.w, bottom: 7.h, right: 7.h, top: 7.h);
      default:
        return EdgeInsets.only(
            left: 16.w, bottom: 16.h, right: 16.h, top: 16.h);
    }
  }

  _setColor() {
    switch (variant) {
      default:
        return ColorConstant.indigoA400;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder4:
        return BorderRadius.circular(
          (4.00.r),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RubikMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: (14.sp),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w500,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  CircleBorder27,
  RoundedBorder4,
}

enum ButtonPadding {
  PaddingAll16,
  PaddingAll7,
}

enum ButtonVariant {
  FillIndigoA400,
}

enum ButtonFontStyle {
  RubikMedium18,
  RubikMedium14,
}
