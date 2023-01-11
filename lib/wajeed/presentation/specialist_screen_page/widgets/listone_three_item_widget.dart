import '../controller/specialist_screen_controller.dart';
import '../models/listone_three_item_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';

// ignore: must_be_immutable
class ListoneThreeItemWidget extends StatelessWidget {
  ListoneThreeItemWidget(this.listoneThreeItemModelObj);

  ListoneThreeItemModel listoneThreeItemModelObj;

  var controller = Get.find<SpecialistScreenController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 1,
        top: 6.0200195,
        right: 2,
        bottom: 6.0200195,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              top: 1,
            ),
            child: Text(
              "lbl_4".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              // style: AppStyle.txtPoppinsRegular1531,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 42,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_5".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              // style: AppStyle.txtPoppinsRegular1531,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 42,
              bottom: 1,
            ),
            child: Text(
              "lbl_6".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              // style: AppStyle.txtPoppinsRegular1531,
            ),
          ),
        ],
      ),
    );
  }
}
