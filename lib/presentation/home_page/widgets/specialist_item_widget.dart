import '../controller/home_controller.dart';
import '../models/specialist_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SpecialistItemWidget extends StatelessWidget {
  SpecialistItemWidget(this.specialistItemModelObj);

  SpecialistItemModel specialistItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          margin: getMargin(
            right: 15,
          ),
          decoration: AppDecoration.outlineBlack90014.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          12.00,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          12.00,
                        ),
                      ),
                      bottomLeft: Radius.circular(
                        getHorizontalSize(
                          2.00,
                        ),
                      ),
                      bottomRight: Radius.circular(
                        getHorizontalSize(
                          2.00,
                        ),
                      ),
                    ),
                    child: CommonImageView(
                      imagePath: ImageConstant.imgRectangle508,
                      height: getVerticalSize(
                        180.00,
                      ),
                      width: getHorizontalSize(
                        190.00,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 28,
                  top: 14,
                  right: 28,
                ),
                child: Text(
                  "msg_dr_fillerup_gr".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikMedium18,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 28,
                  top: 2,
                  right: 28,
                ),
                child: Text(
                  "msg_medicine_specia".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRubikLight12Bluegray500cc,
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 28,
                  top: 7,
                  right: 28,
                  bottom: 6,
                ),
                child: CommonImageView(
                  svgPath: ImageConstant.imgMap,
                  height: getVerticalSize(
                    12.00,
                  ),
                  width: getHorizontalSize(
                    72.00,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
