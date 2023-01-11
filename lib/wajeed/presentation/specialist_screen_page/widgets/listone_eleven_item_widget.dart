import '../controller/specialist_screen_controller.dart';
import '../models/listone_eleven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';

// ignore: must_be_immutable
class ListoneElevenItemWidget extends StatelessWidget {
  ListoneElevenItemWidget(this.listoneElevenItemModelObj);

  ListoneElevenItemModel listoneElevenItemModelObj;

  var controller = Get.find<SpecialistScreenController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        left: 1,
        top: 6.014984,
        bottom: 6.014984,
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
              "lbl_18".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              // style: AppStyle.txtPoppinsRegular1531,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 37,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_19".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              //style: AppStyle.txtPoppinsRegular1531,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 35,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_20".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              // style: AppStyle.txtPoppinsRegular1531,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 36,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_21".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              //style: AppStyle.txtPoppinsRegular1531,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 37,
              bottom: 1,
            ),
            child: Text(
              "lbl_22".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              //style: AppStyle.txtPoppinsRegular1531,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 34,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_23".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              //style: AppStyle.txtPoppinsRegular1531,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 34,
              top: 1,
              bottom: 1,
            ),
            child: Text(
              "lbl_24".tr.toUpperCase(),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              //style: AppStyle.txtPoppinsRegular1531,
            ),
          ),
        ],
      ),
    );
  }
}
