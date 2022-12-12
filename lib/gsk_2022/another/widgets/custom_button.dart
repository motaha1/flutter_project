import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';

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
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillLightblue700:
        return ColorConstant.lightBlue700;
      case ButtonVariant.FillTealA702:
        return ColorConstant.tealA702;
      case ButtonVariant.FillCyan602:
        return ColorConstant.cyan602;
      default:
        return ColorConstant.cyan600;
    }
  }

  _setBorderRadius() {
    switch (shape) {
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

  _setFontStyle() {
    switch (fontStyle) {
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
  RoundedBorder6,
}

enum ButtonPadding {
  PaddingAll16,
}

enum ButtonVariant {
  FillCyan600,
  FillLightblue700,
  FillTealA702,
  FillCyan602,
}

enum ButtonFontStyle {
  RubikMedium18,
}
