import 'package:final_grad_proj/mustafa/core/app_export.dart';
//import 'package:final_grad_proj/mustafa/presentation/walkthrough_three_screen/walkthrough_three_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: 22.h,
        width: 36.w,
        toggleSize: 18,
        borderRadius: 11.00.r,
        activeColor: ColorConstant.tealA702,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.gray600,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
