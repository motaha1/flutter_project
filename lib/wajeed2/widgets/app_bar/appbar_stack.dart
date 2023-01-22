import 'package:flutter/material.dart';
import 'package:final_grad_proj/core/app_export.dart';

// ignore: must_be_immutable
class AppbarStack extends StatelessWidget {
  AppbarStack({this.margin, this.onTap});

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
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.whiteA700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Container(
            height: getSize(
              30.00,
            ),
            width: getSize(
              30.00,
            ),
            decoration: AppDecoration.fillWhiteA700.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 12,
                      top: 9,
                      right: 11,
                      bottom: 8,
                    ),
                    child: InkWell(
                      onTap: () {
                       // onTapImgArrowleft();
                      },
                      child: CommonImageView(
                        svgPath: ImageConstant.imgArrowleft,
                        height: getVerticalSize(
                          12.00,
                        ),
                        width: getHorizontalSize(
                          7.00,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
