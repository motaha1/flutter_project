import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints});

  SearchViewShape? shape;

  SearchViewPadding? padding;

  SearchViewVariant? variant;

  SearchViewFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSearchViewWidget(),
          )
        : _buildSearchViewWidget();
  }

  _buildSearchViewWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case SearchViewFontStyle.OverpassRegular13:
        return TextStyle(
          color: ColorConstant.bluegray90072,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        );
      case SearchViewFontStyle.OverpassRegular13Bluegray500:
        return TextStyle(
          color: ColorConstant.bluegray500,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Overpass',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.bluegray500,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case SearchViewShape.CircleBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
      case SearchViewShape.RoundedBorder6:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case SearchViewVariant.OutlineBlack90011:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case SearchViewVariant.OutlineBlack90011_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case SearchViewVariant.OutlineBlack90011:
        return ColorConstant.whiteA700;
      case SearchViewVariant.OutlineBlack90011_1:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case SearchViewVariant.OutlineBlack9000c:
        return true;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      default:
        return getPadding(
          all: 18,
        );
    }
  }
}

enum SearchViewShape {
  RoundedBorder12,
  CircleBorder25,
  RoundedBorder6,
}
enum SearchViewPadding {
  PaddingAll18,
}
enum SearchViewVariant {
  OutlineBlack9000c,
  OutlineBlack90011,
  OutlineBlack90011_1,
}
enum SearchViewFontStyle {
  RubikRegular15,
  OverpassRegular13,
  OverpassRegular13Bluegray500,
}
