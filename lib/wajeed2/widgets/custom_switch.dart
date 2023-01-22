import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';
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
        height: getHorizontalSize(22),
        width: getHorizontalSize(36),
        toggleSize: 18,
        borderRadius: getHorizontalSize(
          11.00,
        ),
        activeColor: ColorConstant.tealA702,
        activeToggleColor: ColorConstant.whiteA700,
        inactiveColor: ColorConstant.tealA702,
        inactiveToggleColor: ColorConstant.whiteA700,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
