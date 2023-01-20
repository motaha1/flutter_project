import 'package:final_grad_proj/wajeed2/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore_for_file: must_be_immutable
class EvaluationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 7.w,
        top: 25.h,
        right: 7.w,
        bottom: 25.h,
      ),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(top: 10.h, bottom: 10.h
                    //right: 20.w,
                    ),
                child: CommonImageView(
                  //url:'https://cdn.dribbble.com/users/2811431/screenshots/15757826/media/23375c2b9ea044e7c9f90c97c6db503e.gif',
                  height: (150.h),
                  width: (200.w),
                  //alignment: Alignment.topCenter,
                ),
              )),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 60.h, bottom: 10.h
                  //right: 20.w,
                  ),
              child: Text(
                "Please Rate !",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRubikMedium26.copyWith(
                  height: getVerticalSize(
                    1.00,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 4.h,
            ),
            child: Text(
              "Your treatment has been confirmed",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRubikRomanRegular12.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
          Container(
            width: (207.w),
            margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
            child: Text(
              " 💐 نتمنى ان تكون دائما بخير   ",
              maxLines: null,
              textAlign: TextAlign.center,
              style: AppStyle.txtRubikRegular14Bluegray300cc.copyWith(
                height: getVerticalSize(
                  1.27,
                ),
              ),
            ),
          ),
          RatingBar.builder(
            //ignoreGestures: true,
            itemSize: 30.0,
            initialRating: 0,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: (120.h),
                  width: size.width,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomButton(
                      width: 262.w,
                      text: "Done Rate",
                      margin: EdgeInsets.only(bottom: 30.h),
                      shape: ButtonShape.RoundedBorder28,
                      alignment: Alignment.bottomCenter,
                      onTap: () => {},
                    ),
                  ]))),
          Padding(
            padding: EdgeInsets.only(
              top: 17.h,
            ),
            child: Text(
              "Back to Notifications",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtRubikRomanRegular12.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
