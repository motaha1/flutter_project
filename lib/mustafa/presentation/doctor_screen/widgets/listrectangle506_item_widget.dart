import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../controller/doctor_controller.dart';
import '../models/listrectangle506_item_model.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Listrectangle506ItemWidget extends StatelessWidget {
  Listrectangle506ItemWidget(this.listrectangle506ItemModelObj, this.Name,
      this.Specialist, this.Viwers1, this.Viwers2, this.Stars, this.Fav);

  Listrectangle506ItemModel listrectangle506ItemModelObj;
  String Name;
  String Specialist;
  int Viwers1;
  double Viwers2;
  int Stars;
  bool Fav;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 7.0.h,
        right: 3.w,
        bottom: 7.0.h,
      ),
      decoration: AppDecoration.outlineBlack900141.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder6,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding:
                EdgeInsets.only(left: 9.w, top: 11.h, bottom: 11.h, right: 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.00.r),
              child: CommonImageView(
                imagePath: ImageConstant.imgRectangle506,
                height: 82.00.h,
                width: 82.00.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 72.00.h,
            width: 230.00.w,
            margin: EdgeInsets.only(
              left: 15.w,
              top: 16.h,
              right: 9.w,
              bottom: 16.h,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 3.w,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: 10.w,
                          ),
                          child: Text(
                            Name.tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRubikMedium18,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 5.h,
                            right: 10.w,
                          ),
                          child: Text(
                            Specialist.tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRubikLight14,
                          ),
                        ),
                        Container(
                          width: 213.00.w,
                          margin: EdgeInsets.only(
                            top: 9.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 5.h,
                                  bottom: 3.h,
                                ),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgMap,
                                    height: 10.00.h,
                                    width: 80.00.w),
                              ),
                              Container(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: Viwers2.toString().tr,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray901,
                                          fontSize: 16.sp,
                                          fontFamily: 'Rubik',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " ",
                                        style: TextStyle(
                                          color: ColorConstant.bluegray500,
                                          fontSize: 16.sp,
                                          fontFamily: 'PT Sans',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl2".tr,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray500Cc,
                                          fontSize: 16.sp,
                                          fontFamily: 'Rubik',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: Viwers1.toString().tr + "Views",
                                        style: TextStyle(
                                          color: ColorConstant.bluegray500Cc,
                                          fontSize: 12.sp,
                                          fontFamily: 'Rubik',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "lbl3".tr,
                                        style: TextStyle(
                                          color: ColorConstant.bluegray500Cc,
                                          fontSize: 16.sp,
                                          fontFamily: 'Rubik',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      right: 3.w,
                      bottom: 10.h,
                    ),
                    child: GestureDetector(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: CommonImageView(
                          svgPath: Fav == true
                              ? ImageConstant.imgFavorite8X10
                              : ImageConstant.imgFavorite15X19,
                          height: 19.00.h,
                          width: 19.00.w,
                        ),
                      ),
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

  Widget cat_doctor() => Container();
}
