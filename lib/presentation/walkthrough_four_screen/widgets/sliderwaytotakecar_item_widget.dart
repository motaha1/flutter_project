import '../controller/walkthrough_four_controller.dart';
import '../models/sliderwaytotakecar_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SliderwaytotakecarItemWidget extends StatelessWidget {
  SliderwaytotakecarItemWidget(this.sliderwaytotakecarItemModelObj);

  SliderwaytotakecarItemModel sliderwaytotakecarItemModelObj;

  var controller = Get.find<WalkthroughFourController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "msg_way_to_take_car".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtOverpassBold24.copyWith(
              height: 1.00,
            ),
          ),
        ),
        Container(
          width: getHorizontalSize(
            247.00,
          ),
          margin: getMargin(
            left: 6,
            top: 40,
            right: 7,
          ),
          child: Text(
            "msg_the_application".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtOverpassLight16.copyWith(
              height: 1.50,
            ),
          ),
        ),
      ],
    );
  }
}
