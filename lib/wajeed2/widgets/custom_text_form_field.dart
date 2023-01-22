import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.maxLines,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator
      });

  TextFormFieldShape? shape;

  TextFormFieldPadding? padding;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;


  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildTextFormFieldWidget(),
          )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
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
      case TextFormFieldFontStyle.RubikRegular16:
        return TextStyle(
          color: ColorConstant.bluegray500,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w400,
        );
      case TextFormFieldFontStyle.RubikLight18:
        return TextStyle(
          color: ColorConstant.indigoA400,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w300,
        );
      case TextFormFieldFontStyle.RubikLight14:
        return TextStyle(
          color: ColorConstant.bluegray500E5,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w300,
        );
      default:
        return TextStyle(
          color: ColorConstant.bluegray500,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w300,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder6:
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
      case TextFormFieldVariant.OutlineBluegray50028_1:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.bluegray50028,
            width: 1,
          ),
        );
      case TextFormFieldVariant.OutlineBlack9000c:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.UnderLineBluegray50026:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.bluegray50026,
          ),
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.bluegray50028,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBlack9000c:
        return ColorConstant.whiteA700;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBluegray50028_1:
        return false;
      case TextFormFieldVariant.OutlineBlack9000c:
        return true;
      case TextFormFieldVariant.UnderLineBluegray50026:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }
}

enum TextFormFieldShape {
  RoundedBorder12,
  RoundedBorder6,
}

enum TextFormFieldPadding {
  PaddingAll16, PaddingAll9,
}

enum TextFormFieldVariant {
  OutlineBluegray50028,
  OutlineBluegray50028_1,
  OutlineBlack9000c,
  UnderLineBluegray50026,
}

enum TextFormFieldFontStyle {
  RubikLight16,
  RubikRegular16,
  RubikLight18,
  RubikLight14,
}
