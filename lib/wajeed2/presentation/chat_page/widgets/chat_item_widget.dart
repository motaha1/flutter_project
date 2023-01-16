import '../chat_page.dart';
import '../controller/chat_controller.dart';
import '../models/chat_item_model.dart';
import '../models/Userchat.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ChatItemWidget extends StatelessWidget {
  ChatItemWidget(this.chatItemModelObj, this.index, {this.onTapRowtime});

  ChatItemModel chatItemModelObj;

  var controller = Get.find<ChatController>();
  int index;
  VoidCallback? onTapRowtime;

  @override
  Widget build(BuildContext context) {
    return Card(
        //alignment: Alignment.bottomLeft,
        child: GestureDetector(
      onTap: () {
        ChatPage.i = index;
        onTapRowtime!();
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          top: 12.5.h,
          right: 24.w,
          bottom: 12.5.h,
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: (52.h),
                      width: (52.w),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                (26.r),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.patient,
                                height: (52.h),
                                width: (52.w),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: (8.h),
                              width: (8.w),
                              margin: EdgeInsets.only(
                                left: 10.w,
                                top: 10.h,
                                right: 6.w,
                                bottom: 2.h,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.greenA401,
                                borderRadius: BorderRadius.circular(
                                  (4.r),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 12.w,
                          top: 6.h,
                          bottom: 2.h,
                        ),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                ChatPage.userchats[index].titel,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRubikRomanMedium20.copyWith(
                                  height: 1.20.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 3.h,
                                  right: 10.w,
                                ),
                                child: Text(
                                  ChatPage.userchats[index].subtitel,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRubikRomanLight12Gray601
                                      .copyWith(
                                    height: 1.25.h,
                                  ),
                                ),
                              ),
                            ])),
                  ]),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: 10.w,
                            top: 4.h,
                          ),
                          padding: EdgeInsets.only(
                            left: 6.w,
                            top: 3.h,
                            right: 6.w,
                            bottom: 3.h,
                          ),
                          decoration: AppDecoration.txtFillRed400.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder11,
                          ),
                          child: Text(
                            ChatPage.userchats[index].countmessage,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRubikRomanRegular12WhiteA700
                                .copyWith(
                              height: 1.25.h,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            ChatPage.userchats[index].time,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRubikItalicLight12.copyWith(
                              height: 1.25.h,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ]),
      ),
    ));
  }
}
