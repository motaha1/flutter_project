import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.height,
      this.width,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? height;

  double? width;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        constraints: BoxConstraints(
          minHeight: getSize(height ?? 0),
          minWidth: getSize(width ?? 0),
        ),
        padding: EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
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
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillRed400:
        return ColorConstant.red400;
      case IconButtonVariant.FillGreen700:
        return ColorConstant.green700;
      case IconButtonVariant.FillLightblue301:
        return ColorConstant.lightBlue301;
      case IconButtonVariant.FillOrangeA200:
        return ColorConstant.orangeA200;
      case IconButtonVariant.FillBluegray500cc:
        return ColorConstant.bluegray500Cc;

      case IconButtonVariant.FillGray102:
        return ColorConstant.gray102;
      case IconButtonVariant.FillGray602:
        return ColorConstant.gray602;
      case IconButtonVariant.FillBluegray903:
        return ColorConstant.bluegray903;
      case IconButtonVariant.FillRedA701:
        return ColorConstant.redA701;
      case IconButtonVariant.FillTeal400:
        return ColorConstant.teal400;
      case IconButtonVariant.FillRed600:
        return ColorConstant.red600;

      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder16:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder10,
  CircleBorder16,
}
enum IconButtonPadding {
  PaddingAll8,
}
enum IconButtonVariant {
  FillWhiteA700,
  FillRed400,
  FillGreen700,
  FillLightblue301,
  FillOrangeA200,
  FillBluegray500cc,
  FillGray102,
  FillGray602, 
  FillBluegray903,
  FillRedA701,
  FillTeal400,
  FillRed600,
       

}
