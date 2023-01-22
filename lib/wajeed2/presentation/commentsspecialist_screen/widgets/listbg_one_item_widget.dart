import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/wajeed2/presentation/commentsspecialist_screen/commentsspecialist_screen.dart';
import 'package:final_grad_proj/wajeed2/presentation/commentsspecialist_screen/models/comments_list.dart';
import 'package:provider/provider.dart';

import '../controller/commentsspecialist_controller.dart';
import '../models/listbg_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ListbgOneItemWidget extends StatelessWidget {
  ListbgOneItemWidget(this.Commentslist);

  List<Comments> Commentslist;
  //ListbgOneItemModel listbgOneItemModelObj;

  //var controller = Get.find<CommentsspecialistController>();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.only(
        // top: 6.h,
        bottom: 10.h,
      ),
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadiusStyle.roundedBorder24,
      // ),
      child: Consumer<AuthProvider>(
        builder: (context , provider , x) {
          return Container(
            height: (210.h),
            width: (305.w),
            decoration: AppDecoration.outlineBlack90026.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder24,
            ),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    height: (210.h),
                    width: (305.w),
                    margin: EdgeInsets.only(
                      top: 20.h,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray51,
                      borderRadius: BorderRadius.circular(
                        (25.r),
                      ),
                      // border: Border.all(

                      //   color: ColorConstant.black900,
                      //   width: getHorizontalSize(
                      //     1,
                      //   ),
                      // ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 10.w,
                      top: 15.h,
                      right: 7.w,
                      bottom: 5.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: 20.h,
                              right: 10.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    (21.r),
                                  ),
                                  child: CommonImageView(
                                    url: provider.user_api?.user?.avatar ??'https://img.freepik.com/premium-psd/3d-doctor-cartoon-character-avatar-isolated-3d-rendering_235528-997.jpg?w=740' ,
                                    height: (55.h),
                                    width: (55.w),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 12.w,
                                    top: 10.h,
                                    bottom: 4.h,
                                  ),
                                  child: Text(
                                    //  CommentsspecialistScreen
                                    MyWidgetState.Commentslist[MyWidgetState.i].Name
                                        .toString(),
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtLatoBold14.copyWith(
                                      height: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: (279.w),
                            margin: EdgeInsets.only(
                              left: 8.w,
                              top: 5.h,
                            ),
                            child: Expanded(
                              child: Text(
                                MyWidgetState.Commentslist[MyWidgetState.i].comment
                                    .toString(),
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtLatoRegular12.copyWith(
                                  height: 1.29,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: (1.h),
                              width: (268.w),
                              margin: EdgeInsets.only(
                                left: 7.w,
                                top: 8.h,
                                right: 11.w,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.black900,
                                // borderRadius: BorderRadius.circular(
                                //   (25.r),
                                // ),
                                // border: Border.all(
                                //   color: ColorConstant.black900,
                                //   width: (1),
                                // ),
                              )),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 7.w,
                              // top: 15.h,
                              right: 5.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: 2.h, bottom: 1.h,
                                        // left: 9.w
                                      ),
                                      child: Text(
                                        MyWidgetState
                                            .Commentslist[MyWidgetState.i].like
                                            .toString(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtLatoLight12.copyWith(
                                          height: 1.25,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 0.w,
                                      ),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.thumb_up_off_alt,
                                          color: Colors.blue,
                                          size: 15,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 12.w,
                                      ),
                                      child: IconButton(
                                        icon: Icon(
                                          Icons.thumb_down_off_alt_rounded,
                                          color: Colors.red,
                                          size: 15,
                                        ),
                                        onPressed: () {},
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 3.w,
                                        top: 4.h,
                                        bottom: 4.h,
                                      ),
                                      child: Text(
                                        MyWidgetState
                                            .Commentslist[MyWidgetState.i].unlike
                                            .toString(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtLatoLight12.copyWith(
                                          height: 1.25,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 100.w,
                                        top: 4.h,
                                        // bottom: 8.h,
                                      ),
                                      child: Text(
                                        MyWidgetState
                                            .Commentslist[MyWidgetState.i].time
                                            .toString(),
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRubikRomanRegular12
                                            .copyWith(
                                          height: 1.25,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
