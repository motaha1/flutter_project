//import 'dart:ffi';

import 'package:final_grad_proj/wajeed/presentation/chat_page/models/UserChat.dart';

import '../../widgets/app_bar/appbar_subtitle_2.dart';
import '../../widgets/custom_search_view.dart';
import '../chat_page/widgets/chat_item_widget.dart';
import '../message_screen/message_screen.dart';
import '../message_screen/message_screen.dart';
import 'controller/chat_controller.dart';
import 'models/chat_item_model.dart';
import 'models/UserChat.dart';
import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/widgets/app_bar/appbar_image.dart';
import 'package:final_grad_proj/wajeed/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:final_grad_proj/wajeed/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// // ignore_for_file: must_be_immutable
class ChatPage extends GetWidget<ChatController> {
  static String NameUser = "";
  static int i = 0;
  static List<userChat> userchats = [
    const userChat(
        countmessage: "1",
        subtitel: "how are you",
        time: "1:50 am",
        titel: "Ahmaddddd"),
    const userChat(
        countmessage: "1",
        subtitel: "how are you",
        time: "1:50 am",
        titel: "n"),
    const userChat(
        countmessage: "1",
        subtitel: "how are you",
        time: "1:50 am",
        titel: "Ahmad"),
    const userChat(
        countmessage: "1",
        subtitel: "how are you",
        time: "1:50 am",
        titel: "Ahmad1"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                width: size.width,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: CommonImageView(
                          imagePath: ImageConstant.BackgroundChat,
                          height: 812.h,
                          width: 375.w)),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Row(
                        children: [
                          Container(
                              height: 25.h,
                              width: 25.w,
                              margin: EdgeInsets.only(
                                  left: 40.w, top: 30.h, bottom: 13.h),
                              child: Icon(Icons.search , color: Colors.white)),
                          Container(
                              margin: EdgeInsets.only(
                                  left: 100.w, top: 30.h, bottom: 13.h),
                              child: Text("Chat",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoMedium24)),
                          Container(
                              height: 25.h,
                              width: 25.w,
                              margin: EdgeInsets.only(
                                  left: 100.w, top: 30.h, bottom: 13.h),
                              child: Icon(Icons.call , color: Colors.white )),
                        ],
                      )),
                     Padding(
                       padding:EdgeInsets.only(left: 23.w, right: 23.w, bottom: 10.h,top:65.h),
                       child: Align(
                        alignment: Alignment.topCenter,
                        child: CustomSearchView(
                                          width: 327.w,
                                          focusNode: FocusNode(),
                                        //  controller:
                                        //      controller.group3620Controller,
                                          hintText: "msg_search_for_your".tr,
                                          margin: EdgeInsets.only(left: 1.w),
                                          prefix: Container(
                                              margin: EdgeInsets.only(
                                                  left: 22.w,
                                                  top: 18.h,
                                                  right: 10.w,
                                                  bottom: 18.h),
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgSearch)),
                                          prefixConstraints: BoxConstraints(
                                              minWidth: getSize(14.00),
                                              minHeight: getSize(14.00)))),
                     ),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          margin: EdgeInsets.only(top: 120.h),
                          child: Obx(() => ListView.builder(
                              itemCount: controller
                                  .chatModelObj.value.chatItemList.length,
                              itemBuilder: (context, index) {
                                ChatItemModel model = controller
                                    .chatModelObj.value.chatItemList[index];
                               
                                return ChatItemWidget(model, index,
                                    onTapRowtime: onTapRowtime
                                    );
                              }))))
                ]))));
  }

  onTapRowtime() {
    print(i);
    NameUser = userchats[i].titel;
    // Get.toNamed(AppRoutes.Messagescreen);
  }

  onTapCall1() {
    // Get.toNamed(AppRoutes.callsScreen);
  }
}

// import '../chat_page/widgets/chat_item_widget.dart';
// import 'controller/chat_controller.dart';
// import 'models/chat_item_model.dart';
// import 'models/chat_model.dart';
// import 'package:flutter/material.dart';
// import 'package:wajeed_s_application2/core/app_export.dart';
// import 'package:wajeed_s_application2/widgets/app_bar/appbar_image.dart';
// import 'package:wajeed_s_application2/widgets/app_bar/appbar_subtitle_2.dart';
// import 'package:wajeed_s_application2/widgets/app_bar/custom_app_bar.dart';
// import 'package:wajeed_s_application2/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
// class ChatPage extends StatelessWidget {
//   ChatController controller = Get.put(ChatController());

//     static String NameUser = "";
//   static int i = 0;
//   static List<userChat> userchats = [
//     const userChat(
//         countmessage: "1",
//         subtitel: "how are you",
//         time: "1:50 am",
//         titel: "Ahmaddddd"),
//     const userChat(
//         countmessage: "1",
//         subtitel: "how are you",
//         time: "1:50 am",
//         titel: "n"),
//     const userChat(
//         countmessage: "1",
//         subtitel: "how are you",
//         time: "1:50 am",
//         titel: "Ahmad"),
//     const userChat(
//         countmessage: "1",
//         subtitel: "how are you",
//         time: "1:50 am",
//         titel: "Ahmad1"),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: ColorConstant.indigoA4007f,
//             appBar: CustomAppBar(
//                 height: getVerticalSize(105.00),
//                 centerTitle: true,
//                 title: Container(
//                     height: getVerticalSize(105.00),
//                     width: size.width,
//                     child: Stack(children: [
//                       AppbarImage(
//                           height: getVerticalSize(105.00),
//                           width: getHorizontalSize(375.00),
//                           svgPath: ImageConstant.patient
//                           ),
//                       Padding(
//                           padding: getPadding(
//                               left: 32, top: 39, right: 166, bottom: 36),
//                           child: Row(children: [
//                             AppbarImage(
//                                 height: getSize(30.00),
//                                 width: getSize(30.00),
//                                 svgPath: ImageConstant.imgMap),
//                             AppbarSubtitle2(
//                                 text: "lbl_chat".tr,
//                                 margin: getMargin(left: 104, top: 1, bottom: 4))
//                           ]))
//                     ])),
//                 actions: [
//                   AppbarImage(
//                       height: getSize(25.00),
//                       width: getSize(25.00),
//                       svgPath: ImageConstant.patient,
//                       margin:
//                           getMargin(left: 33, top: 42, right: 33, bottom: 38),
//                       onTap: onTapCall1)
//                 ]),
//             body: SingleChildScrollView(
//                 padding: getPadding(top: 10, bottom: 5),
//                 child: Container(
//                     height: getVerticalSize(727.00),
//                     width: size.width,
//                     child: Stack(alignment: Alignment.topCenter, children: [
//                       Align(
//                           alignment: Alignment.centerLeft,
//                           child: Card(
//                               clipBehavior: Clip.antiAlias,
//                               elevation: 0,
//                               margin: getMargin(top: 10),
//                               color: ColorConstant.whiteA700,
//                               shape: RoundedRectangleBorder(
//                                   borderRadius:
//                                       BorderRadiusStyle.customBorderBL40),
//                               child: Container(
//                                   height: getVerticalSize(706.00),
//                                   width: size.width,
//                                   decoration: AppDecoration.fillWhiteA700
//                                       .copyWith(
//                                           borderRadius: BorderRadiusStyle
//                                               .customBorderBL40),
//                                   child: Stack(children: [
//                                     Align(
//                                         alignment: Alignment.bottomLeft,
//                                         child: Padding(
//                                             padding: getPadding(
//                                                 left: 142,
//                                                 top: 10,
//                                                 right: 142,
//                                                 bottom: 5),
//                                             child: CommonImageView(
//                                                 svgPath:
//                                                     ImageConstant.imgFavorite,
//                                                 height: getVerticalSize(18.00),
//                                                 width:
//                                                     getHorizontalSize(22.00))))
//                                   ])))),
//                       Align(
//                           alignment: Alignment.topCenter,
//                           child: Padding(
//                               padding:
//                                   getPadding(left: 23, right: 23, bottom: 10),
//                               child: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: [
//                                     CustomSearchView(
//                                         width: 327,
//                                         focusNode: FocusNode(),
//                                         controller:
//                                             controller.group3620Controller,
//                                         hintText: "msg_search_for_your".tr,
//                                         margin: getMargin(left: 1),
//                                         prefix: Container(
//                                             margin: getMargin(
//                                                 left: 22,
//                                                 top: 18,
//                                                 right: 10,
//                                                 bottom: 18),
//                                             child: CommonImageView(
//                                                 svgPath:
//                                                     ImageConstant.imgSearch)),
//                                         prefixConstraints: BoxConstraints(
//                                             minWidth: getSize(14.00),
//                                             minHeight: getSize(14.00))),
//                                     Padding(
//                                         padding: getPadding(top: 17, right: 1),
//                                         child: Obx(() => ListView.builder(
//                                             physics:
//                                                 NeverScrollableScrollPhysics(),
//                                             shrinkWrap: true,
//                                             itemCount: controller.chatModelObj
//                                                 .value.chatItemList.length,
//                                             itemBuilder: (context, index) {
//                                               ChatItemModel model = controller
//                                                   .chatModelObj
//                                                   .value
//                                                   .chatItemList[index];
//                                               return ChatItemWidget(model,index,
//                                                   onTapRowtime: onTapRowtime);
//                                             })))
//                                   ])))
//                     ])))));
//   }

//   onTapRowtime() {
//     //Get.toNamed(AppRoutes.messageScreen);
//   }

//   onTapCall1() {
//     Get.toNamed(AppRoutes.callsScreen);
//   }
// }
