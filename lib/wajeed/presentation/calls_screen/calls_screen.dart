import '../calls_screen/widgets/calls_item_widget.dart';
import 'controller/calls_controller.dart';
import 'models/calls_item_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/widgets/app_bar/appbar_image.dart';
import 'package:final_grad_proj/wajeed/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:final_grad_proj/wajeed/widgets/app_bar/custom_app_bar.dart';

class CallsScreen extends GetWidget<CallsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
          height: getVerticalSize(
            105.00,
          ),
          centerTitle: true,
          title: Row(
            children: [
              Container(
                height: getVerticalSize(
                  105.00,
                ),
                width: getHorizontalSize(
                  156.00,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    AppbarImage(
                      height: getVerticalSize(
                        105.00,
                      ),
                      width: getHorizontalSize(
                        156.00,
                      ),
                      //svgPath: ImageConstant.imgEllipse142,
                    ),
                    AppbarImage(
                      height: getSize(
                        30.00,
                      ),
                      width: getSize(
                        30.00,
                      ),
                      ////// svgPath: ImageConstant.imgArrowupWhiteA700,
                      margin: getMargin(
                        left: 29,
                        top: 38,
                        right: 97,
                        bottom: 37,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getVerticalSize(
                  105.00,
                ),
                width: getHorizontalSize(
                  209.97,
                ),
                margin: getMargin(
                  left: 9,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(
                          105.00,
                        ),
                        width: getHorizontalSize(
                          203.00,
                        ),
                        margin: getMargin(
                          left: 6,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.indigoA400B2,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              101.50,
                            ),
                          ),
                        ),
                      ),
                    ),
                    AppbarSubtitle1(
                      text: "lbl_calls".tr,
                      margin: getMargin(
                        top: 40,
                        right: 164,
                        bottom: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                bottom: 1,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: getVerticalSize(
                      3.00,
                    ),
                    width: getHorizontalSize(
                      30.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 33,
                      right: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray300,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          1.50,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 23,
                      right: 24,
                      bottom: 135,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Container(
                            height: getVerticalSize(
                              1.00,
                            ),
                            width: getHorizontalSize(
                              280.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray103,
                            ),
                          );
                        },
                        itemCount:
                            controller.callsModelObj.value.callsItemList.length,
                        itemBuilder: (context, index) {
                          CallsItemModel model = controller
                              .callsModelObj.value.callsItemList[index];
                          return CallsItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
