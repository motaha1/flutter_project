import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/appoiments_widget.dart';
import 'package:final_grad_proj/provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'controller/thank_you_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ThankYouScreenDialog extends StatelessWidget {
  ThankYouScreenDialog(this.controller);

  ThankYouScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoClass>(builder: (context, provider, x) {
      return Container(
          width: double.infinity,
          decoration: AppDecoration.fillWhiteA700
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: getMargin(left: 20, top: 26, right: 20),
                    color: ColorConstant.teal50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.circleBorder78),
                    child: Container(
                        height: getSize(156.00),
                        width: getSize(156.00),
                        decoration: AppDecoration.fillTeal50.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder78),
                        child: Stack(children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: EdgeInsets.all(40),
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgThumbsup,
                                      height: (69.00.h),
                                      width: (72.00.w))))
                        ]))),
                Padding(
                    padding: getPadding(left: 20, top: 12, right: 20),
                    child: Text("lbl_thank_you".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRubikMedium38)),
                Padding(
                    padding: getPadding(left: 20, top: 5, right: 20),
                    child: Text("msg_your_appointmen".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRubikRegular20)),
                Container(
                    width: getHorizontalSize(238.00),
                    margin: getMargin(left: 20, top: 33, right: 20),
                    child: Text(
                        "You booked an appointment with Dr. ${provider.doctorname} \nPediatrician Purpieson on ${provider.date},\nat ${provider.time}",
                        maxLines: null,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtRubikRegular14Bluegray500)),
                CustomButton(
                  width: 295,
                  text: "lbl_done".tr,
                  margin: getMargin(left: 20, top: 38, right: 20),
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => appoiment()));
                  },
                ),
                Padding(
                    padding:
                        getPadding(left: 20, top: 18, right: 20, bottom: 5),
                    child: Text("msg_edit_your_appoi".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRubikRegular14Bluegray500))
              ]));
    });
  }

  onTapDone() {
    Get.toNamed(AppRoutes.doctorDetailsScreen);
  }
}
