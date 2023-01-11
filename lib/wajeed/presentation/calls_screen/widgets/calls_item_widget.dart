import '../controller/calls_controller.dart';
import '../models/calls_item_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';

// ignore: must_be_immutable
class CallsItemWidget extends StatelessWidget {
  CallsItemWidget(this.callsItemModelObj);

  CallsItemModel callsItemModelObj;

  var controller = Get.find<CallsController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 20.0,
        bottom: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                height: getSize(
                  52.00,
                ),
                width: getSize(
                  52.00,
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            26.00,
                          ),
                        ),
                        child: CommonImageView(
                          //imagePath: ImageConstant.imgEllipse304,
                          height: getSize(
                            52.00,
                          ),
                          width: getSize(
                            52.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            26.00,
                          ),
                        ),
                        child: CommonImageView(
                          //imagePath: ImageConstant.imgEllipse386,
                          height: getSize(
                            52.00,
                          ),
                          width: getSize(
                            52.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            26.00,
                          ),
                        ),
                        child: CommonImageView(
                          //imagePath: ImageConstant.imgEllipse387,
                          height: getSize(
                            52.00,
                          ),
                          width: getSize(
                            52.00,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 12,
                  top: 5,
                  bottom: 5,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        right: 10,
                      ),
                      child: Text(
                        "lbl_team_align".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        // style: AppStyle.txtRubikRomanMedium18.copyWith(
                        //  height: 1.22,
                        // ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: getPadding(
                              bottom: 1,
                            ),
                            child: CommonImageView(
                              //svgPath: ImageConstant.imgCall16x16,
                              height: getSize(
                                16.00,
                              ),
                              width: getSize(
                                16.00,
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 6,
                              top: 1,
                            ),
                            child: Text(
                              "lbl_today_09_30_am".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRubikRomanRegular12.copyWith(
                                height: 1.25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: getPadding(
              left: 86,
              top: 14,
              bottom: 14,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CommonImageView(
                  // svgPath: ImageConstant.imgCall24x24,
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 16,
                  ),
                  child: CommonImageView(
                    //svgPath: ImageConstant.imgVideocamera24x24,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
