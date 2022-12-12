import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';

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
      this.validator});

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
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.bluegray500,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Rubik',
          fontWeight: FontWeight.w300,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case TextFormFieldShape.RoundedBorder10:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            6.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBluegray5001e:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.bluegray5001e,
            width: 1,
          ),
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.bluegray4001e,
            width: 1,
          ),
        );
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBluegray4001e:
        return false;
      case TextFormFieldVariant.OutlineBluegray5001e:
        return false;
      default:
        return false;
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

enum TextFormFieldShape {
  RoundedBorder6,
  RoundedBorder10,
}

enum TextFormFieldPadding {
  PaddingAll18,
}

enum TextFormFieldVariant {
  OutlineBluegray4001e,
  OutlineBluegray5001e,
}

enum TextFormFieldFontStyle {
  RubikLight14,
}
