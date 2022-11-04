import '../controller/profile_controller.dart';
import '../models/profile_screen_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileScreenItemWidget extends StatelessWidget {
  ProfileScreenItemWidget(this.profileScreenItemModelObj);

  ProfileScreenItemModel profileScreenItemModelObj;

  var controller = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 6.0,
        bottom: 6.0,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: getPadding(
              left: 20,
              top: 9,
              right: 20,
            ),
            child: Text(
              "lbl_name".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRubikMedium10,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 20,
                top: 2,
                right: 20,
                bottom: 13,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "lbl_abdullah_mamun".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRubikLight16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      bottom: 9,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgEdit,
                      height: getVerticalSize(
                        14.00,
                      ),
                      width: getHorizontalSize(
                        15.00,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
