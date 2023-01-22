import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

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
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll13:
        return getPadding(
          all: 13,
        );
      case ButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      default:
        return getPadding(
          all: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA40019:
        return ColorConstant.indigoA400;
      case ButtonVariant.OutlineBluegray90019:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlineBlack9000f:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillTealA70014:
        return ColorConstant.tealA70014;
      case ButtonVariant.OutlineBluegray50028:
        return null;
      default:
        return ColorConstant.indigoA400;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray90019:
        return Border.all(
          color: ColorConstant.bluegray90019,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineBluegray50028:
        return Border.all(
          color: ColorConstant.bluegray50028,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillIndigoA400:
      case ButtonVariant.OutlineIndigoA40019:
      case ButtonVariant.OutlineBlack9000f:
      case ButtonVariant.FillTealA70014:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.50,
          ),
        );
      case ButtonShape.CircleBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
      case ButtonShape.RoundedBorder12:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineIndigoA40019:
        return [
          BoxShadow(
            color: ColorConstant.indigoA40019,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              12,
            ),
          )
        ];
      case ButtonVariant.OutlineBlack9000f:
        return [
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
          )
        ];
      case ButtonVariant.FillIndigoA400:
      case ButtonVariant.OutlineBluegray90019:
      case ButtonVariant.OutlineBluegray50028:
      case ButtonVariant.FillTealA70014:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.OverpassBold16:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.OverpassBold13:
        return TextStyle(
          color: ColorConstant.bluegray900Bf,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RubikLight16:
        return TextStyle(
          color: ColorConstant.bluegray500,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w300,
        );
      case ButtonFontStyle.RubikRegular16:
        return TextStyle(
          color: ColorConstant.bluegray500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RubikMedium14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RubikLight14:
        return TextStyle(
          color: ColorConstant.indigoA400,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w300,
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
  RoundedBorder28,
  CircleBorder25,
  RoundedBorder6,
  RoundedBorder12,
}

enum ButtonPadding {
  PaddingAll18,
  PaddingAll13,
  PaddingAll9,
}

enum ButtonVariant {
  FillIndigoA400,
  OutlineIndigoA40019,
  OutlineBluegray90019,
  OutlineBlack9000f,
  OutlineBluegray50028,
  FillTealA70014,
}

enum ButtonFontStyle {
  RubikMedium18,
  OverpassBold16,
  OverpassBold13,
  RubikLight16,
  RubikRegular16,
  RubikMedium14,
  RubikLight14,
}
