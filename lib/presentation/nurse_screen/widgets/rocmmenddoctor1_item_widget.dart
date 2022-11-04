import '../controller/nurse_controller.dart';
import '../models/rocmmenddoctor1_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Rocmmenddoctor1ItemWidget extends StatelessWidget {
  Rocmmenddoctor1ItemWidget(this.rocmmenddoctor1ItemModelObj);

  Rocmmenddoctor1ItemModel rocmmenddoctor1ItemModelObj;

  var controller = Get.find<NurseController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.topRight,
        child: Container(
          margin: getMargin(
            right: 20,
          ),
          decoration: AppDecoration.outlineBlack90014.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
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
                    imagePath: ImageConstant.imgRectangle508131X136,
                    height: getVerticalSize(
                      131.00,
                    ),
                    width: getHorizontalSize(
                      136.00,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 26,
                    top: 7,
                    right: 26,
                  ),
                  child: Text(
                    "lbl_n_truluck_nik".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRubikMedium14,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 26,
                    top: 2,
                    right: 26,
                  ),
                  child: Text(
                    "msg_medicine_specia".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRubikLight10,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    left: 29,
                    top: 6,
                    right: 29,
                    bottom: 14,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgMap,
                    height: getVerticalSize(
                      10.00,
                    ),
                    width: getHorizontalSize(
                      57.00,
                    ),
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
