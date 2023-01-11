import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';

// ignore: must_be_immutable
class AppbarSubtitle5 extends StatelessWidget {
  AppbarSubtitle5({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtBeVietnamProSemiBold1464.copyWith(
            letterSpacing: 0.20,
            height: 1.30,
            color: ColorConstant.black900,
          ),
        ),
      ),
    );
  }
}