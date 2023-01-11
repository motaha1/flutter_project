import 'package:final_grad_proj/models/notification.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'controller/notification_m_controller.dart';
import 'package:final_grad_proj/mustafa/core/app_export.dart';
import 'package:flutter/material.dart';

class NotificationMScreen extends StatefulWidget {
  @override
  State<NotificationMScreen> createState() => _NotificationMScreenState();
}

class ListNotiItemModel {
  final String Notification;
  final String date;
  bool seen;

  ListNotiItemModel(
      @required this.Notification, @required this.date, @required this.seen);
}

class _NotificationMScreenState extends State<NotificationMScreen> {
  static List<ListNotiItemModel> Notifi_List = [
    ListNotiItemModel(
        "dfdlsskjdfsudfsdfsdfsdfsdfkjfdsdkjfsdfjhdddddddddfdlsskjdfsudfsdf",
        "01-11-2015",
        true),
    ListNotiItemModel(
        "Msdfsdfdsfsdfxcvdgjjhhjgfdhfdghgffghfghfghustafa", "02", true),
    ListNotiItemModel(
        "Mustagdfgadswertyuiop[lkjnbvcvbnm,jhgfdfghj,fa", "03", true),
    ListNotiItemModel(
        "Mustagdfgadswertyuiop[lkjnbvcvbnm,jhgfdfghj,fa", "04", true),
    ListNotiItemModel(
        "Mustagdfgadswertyuiop[lkjnbvcvbnm,jhgfdfghj,fa", "05", true),
    ListNotiItemModel(
        "Mustagdfgadswertyuiop[lkjnbvcvbnm,jhgfdfghj,fa", "06", true),
    ListNotiItemModel(
        "Mustagdfgadswertyuiop[lkjnbvcvbnm,jhgfdfghj,fa", "07", true),
    ListNotiItemModel(
        "kjhgfguiop';lknbvbnklkjfdsvnm,mbvcghjioplkjh", "08", true),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: Consumer<AuthProvider>(
                  builder: (context , provider ,x) {
                    return Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: size.width,
                                  margin: EdgeInsets.only(top: 48.h, bottom: 20.h),
                                  child: Padding(
                                      padding:
                                          EdgeInsets.only(left: 24.w, right: 16.w),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        onTapImgArrowleft();
                                                      },
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowleft,
                                                          height: 24.00,
                                                          width: 24.00)),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 16.w,
                                                          top: 4.h,
                                                          bottom: 3.h),
                                                      child: Text(
                                                          "lbl_notification".tr,
                                                          overflow:
                                                              TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle
                                                              .txtOverpassBold16))
                                                ]),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 5.h, bottom: 3.h),
                                                child: Text.rich(TextSpan(
                                                    text: "lbl_clear_all".tr,
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                    ),
                                                    recognizer:
                                                        TapGestureRecognizer()
                                                          ..onTap = () {
                                                            if (provider.notify!.length >
                                                                0) {
                                                              setState(() {
                                                                for (int i = 0;
                                                                    i <=
                                                                        provider.notify!
                                                                            .length;
                                                                    i++)
                                                                  provider.notify!
                                                                      .removeAt(i);
                                                              });
                                                            } else if (provider.notify!
                                                                    .length ==
                                                                0) {
                                                              showDialog(
                                                                context: context,
                                                                builder: (ctx) =>
                                                                    AlertDialog(
                                                                  title: const Text(
                                                                      "you haven't Notifications yet"),
                                                                  content:
                                                                      const Text(
                                                                          ""),
                                                                ),
                                                              );


                                                              
                                                            }

                                                            // Get.toNamed(
                                                            //     AppRoutes.settingsScreen);
                                                          }
                                                    // overflow: TextOverflow.ellipsis,
                                                    // textAlign: TextAlign.left,
                                                    // style: AppStyle.txtHKGroteskMedium13
                                                    )))
                                          ])))),
                          Expanded(
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: SingleChildScrollView(
                                      child: Container(
                                          height: 150 * provider.notify!.length.h,
                                          width: 518.w,
                                          child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                Align(
                                                    alignment: Alignment.topCenter,
                                                    child: Padding(
                                                        padding: EdgeInsets.only(
                                                            left: 15.w,
                                                            top: 0.h,
                                                            right: 5.w,
                                                            bottom: 0),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize.min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              ListView.builder(
                                                                  physics:
                                                                      NeverScrollableScrollPhysics(),
                                                                  shrinkWrap: true,
                                                                  itemCount:
                                                                      provider.notify!
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return Notifi(
                                                                        provider.notify![
                                                                            index],
                                                                        index);
                                                                  }),
                                                            ]))),
                                              ]))))),
                        ]);
                  }
                ))));
  }

  onTapImgArrowleft() {
    Get.back();
  }

  Widget Notifi(Notify notify, int index) {
    int read = 0;
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(
            height: 105.00.h,
            width: size.width.h,
            margin: EdgeInsets.only(top: 0.h),
            child: Stack(alignment: Alignment.topLeft, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(left: 1.w, top: 10.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: 2.00.h,
                                width: 375.00.w,
                                decoration: BoxDecoration(
                                    color: ColorConstant.gray201)),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.w, top: 16.h, right: 24.w),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 0.h, bottom: 0.h),
                                            child: IconButton(
                                              icon:
                                                  notify.seen == true
                                                      ? Icon(
                                                          Icons
                                                              .mark_as_unread_outlined,
                                                          color: Colors.green,
                                                          size: 25,
                                                        )
                                                      : Icon(
                                                          Icons
                                                              .mark_as_unread_outlined,
                                                          color: Colors.grey,
                                                          size: 25,
                                                        ),
                                              onPressed: () {
                                                setState(() {
                                                  if (notify.seen ==
                                                      true)
                                                    notify.seen =
                                                        false;
                                                  else
                                                    notify.seen =
                                                        true;
                                                });
                                              },
                                            ),
                                          ),
                                          Container(
                                              width: 195.00.w,
                                              margin:
                                                  EdgeInsets.only(left: 16.w),
                                              child: Text(
                                                  notify.msg ??'nothing'
                                                  ,
                                                  maxLines: null,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtOverpassRegular14Bluegray9009e
                                                      .copyWith(
                                                          height: 1.21.h))),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                top: 5.h,
                                                bottom: 0.h,
                                                left: 0.w),
                                            child: IconButton(
                                              icon: const Icon(
                                                Icons.delete,
                                                color: Colors.grey,
                                                size: 25,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                              Provider.of<AuthProvider>(context , listen: false).notify
                                                      !.removeAt(index);
                                                });
                                              },
                                            ),
                                          ),
                                        ]))),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 80.w, top: 4.h, right: 40.w),
                                    child: Text(notify.createdAt ??'1-1-2023',
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtOverpassRegular13)))
                          ]))),
            ])));
  }

  void s() {
    // showDialog(
    // context: context,
    // builder: (ctx) => AlertDialog(
    // title: const Text("Alert Dialog Box"),
    // content: const Text("You have raised a Alert Dialog Box"),
    // actions: <Widget>[
    // TextButton(
    // onPressed: () {
    // Navigator.of(ctx).pop();
    // },
    // child: Container(
    // color: Colors.green,
    // padding: const EdgeInsets.all(14),
    // child: const Text("okay"),
    // ),
    // ),
    // ],
    // ),
    // );
    // },
  }
}
