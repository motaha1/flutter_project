// import 'controller/menuspecialist_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:final_grad_proj/wajeed/core/app_export.dart';
// import 'package:final_grad_proj/wajeed/widgets/app_bar/appbar_circleimage.dart';
// import 'package:final_grad_proj/wajeed/widgets/app_bar/custom_app_bar.dart';

// class MenuspecialistScreen extends GetWidget<MenuspecialistController> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             appBar: CustomAppBar(
//                 height: getVerticalSize(56.00),
//                 leadingWidth: 57,
//                 leading: AppbarCircleimage(
//                     imagePath: ImageConstant.imgEllipse164,
//                     margin: getMargin(left: 13, top: 5, bottom: 6)),
//                 title: Padding(
//                     padding: getPadding(left: 14),
//                     child: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Align(
//                               alignment: Alignment.centerLeft,
//                               child: Text("msg_hi_dr_wajeed_mabroukeh".tr,
//                                   overflow: TextOverflow.ellipsis,
//                                   textAlign: TextAlign.left,
//                                   style: AppStyle.txtAbelRegular20)),
//                           Align(
//                               alignment: Alignment.centerLeft,
//                               child: Padding(
//                                   padding: getPadding(left: 2, right: 24),
//                                   child: Text("msg_welcome_to_ask_for".tr,
//                                       overflow: TextOverflow.ellipsis,
//                                       textAlign: TextAlign.left,
//                                       style: AppStyle.txtInterRegular14)))
//                         ]))),
//             body: Container(
//                 width: size.width,
//                 child: SingleChildScrollView(
//                     child: Padding(
//                         padding: getPadding(left: 10, top: 8, bottom: 99),
//                         child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Padding(
//                                   padding: getPadding(top: 24, bottom: 10),
//                                   child: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Align(
//                                             alignment: Alignment.center,
//                                             child: Container(
//                                                 width:
//                                                     getHorizontalSize(194.00),
//                                                 margin: getMargin(right: 1),
//                                                 child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       Row(
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           mainAxisSize:
//                                                               MainAxisSize.min,
//                                                           children: [
//                                                             CommonImageView(
//                                                                 svgPath:
//                                                                     ImageConstant
//                                                                         .imgUser23x20,
//                                                                 height:
//                                                                     getVerticalSize(
//                                                                         23.00),
//                                                                 width:
//                                                                     getHorizontalSize(
//                                                                         20.00)),
//                                                             Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         left: 9,
//                                                                         top: 2,
//                                                                         bottom:
//                                                                             2),
//                                                                 child: Text(
//                                                                     "lbl_my_profile"
//                                                                         .tr,
//                                                                     overflow:
//                                                                         TextOverflow
//                                                                             .ellipsis,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtOverpassRomanRegular14))
//                                                           ]),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 4,
//                                                               bottom: 4),
//                                                           child: CommonImageView(
//                                                               svgPath: ImageConstant
//                                                                   .imgArrowright13x7,
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       13.00),
//                                                               width:
//                                                                   getHorizontalSize(
//                                                                       7.00)))
//                                                     ]))),
//                                         Container(
//                                             width: getHorizontalSize(194.00),
//                                             margin: getMargin(top: 59),
//                                             child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment
//                                                         .spaceBetween,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.center,
//                                                 mainAxisSize: MainAxisSize.max,
//                                                 children: [
//                                                   Row(
//                                                       crossAxisAlignment:
//                                                           CrossAxisAlignment
//                                                               .center,
//                                                       mainAxisSize:
//                                                           MainAxisSize.max,
//                                                       children: [
//                                                         CommonImageView(
//                                                             svgPath:
//                                                                 ImageConstant
//                                                                     .imgVolume,
//                                                             height:
//                                                                 getSize(19.00),
//                                                             width:
//                                                                 getSize(19.00)),
//                                                         Padding(
//                                                             padding: getPadding(
//                                                                 left: 10,
//                                                                 top: 1,
//                                                                 bottom: 1),
//                                                             child: Text(
//                                                                 "lbl_patient_records"
//                                                                     .tr,
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 textAlign:
//                                                                     TextAlign
//                                                                         .left,
//                                                                 style: AppStyle
//                                                                     .txtRubikRegular14Black900))
//                                                       ]),
//                                                   Padding(
//                                                       padding: getPadding(
//                                                           top: 3, bottom: 3),
//                                                       child: CommonImageView(
//                                                           svgPath: ImageConstant
//                                                               .imgArrowright12x7,
//                                                           height:
//                                                               getVerticalSize(
//                                                                   12.00),
//                                                           width:
//                                                               getHorizontalSize(
//                                                                   7.00)))
//                                                 ])),
//                                         Align(
//                                             alignment: Alignment.center,
//                                             child: Container(
//                                                 width:
//                                                     getHorizontalSize(194.00),
//                                                 margin: getMargin(
//                                                     top: 58, right: 1),
//                                                 child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       Row(
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           mainAxisSize:
//                                                               MainAxisSize.max,
//                                                           children: [
//                                                             Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         top: 1),
//                                                                 child: CommonImageView(
//                                                                     svgPath:
//                                                                         ImageConstant
//                                                                             .imgUpload,
//                                                                     height:
//                                                                         getVerticalSize(
//                                                                             20.00),
//                                                                     width: getHorizontalSize(
//                                                                         18.00))),
//                                                             Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         left:
//                                                                             11,
//                                                                         bottom:
//                                                                             3),
//                                                                 child: Text(
//                                                                     "lbl_medicine_orders"
//                                                                         .tr,
//                                                                     overflow:
//                                                                         TextOverflow
//                                                                             .ellipsis,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtRubikRegular14Black900))
//                                                           ]),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 4,
//                                                               bottom: 3),
//                                                           child: CommonImageView(
//                                                               svgPath: ImageConstant
//                                                                   .imgArrowright12x7,
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       12.00),
//                                                               width:
//                                                                   getHorizontalSize(
//                                                                       7.00)))
//                                                     ]))),
//                                         Align(
//                                             alignment: Alignment.center,
//                                             child: Container(
//                                                 width:
//                                                     getHorizontalSize(194.00),
//                                                 margin: getMargin(
//                                                     top: 59, right: 1),
//                                                 child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       Row(
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           mainAxisSize:
//                                                               MainAxisSize.max,
//                                                           children: [
//                                                             CommonImageView(
//                                                                 svgPath:
//                                                                     ImageConstant
//                                                                         .imgCalendar21x21,
//                                                                 height: getSize(
//                                                                     21.00),
//                                                                 width: getSize(
//                                                                     21.00)),
//                                                             Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         left: 8,
//                                                                         top: 2,
//                                                                         bottom:
//                                                                             2),
//                                                                 child: Text(
//                                                                     "lbl_test_bookings"
//                                                                         .tr,
//                                                                     overflow:
//                                                                         TextOverflow
//                                                                             .ellipsis,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtRubikRegular14Black900))
//                                                           ]),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 4,
//                                                               bottom: 4),
//                                                           child: CommonImageView(
//                                                               svgPath: ImageConstant
//                                                                   .imgArrowright12x7,
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       12.00),
//                                                               width:
//                                                                   getHorizontalSize(
//                                                                       7.00)))
//                                                     ]))),
//                                         Align(
//                                             alignment: Alignment.center,
//                                             child: Container(
//                                                 width:
//                                                     getHorizontalSize(194.00),
//                                                 margin: getMargin(
//                                                     top: 59, right: 1),
//                                                 child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       Row(
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .start,
//                                                           mainAxisSize:
//                                                               MainAxisSize.max,
//                                                           children: [
//                                                             CommonImageView(
//                                                                 svgPath:
//                                                                     ImageConstant
//                                                                         .imgVolume22x17,
//                                                                 height:
//                                                                     getVerticalSize(
//                                                                         22.00),
//                                                                 width:
//                                                                     getHorizontalSize(
//                                                                         17.00)),
//                                                             Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         left:
//                                                                             12,
//                                                                         top: 1,
//                                                                         bottom:
//                                                                             4),
//                                                                 child: Text(
//                                                                     "msg_privacy_policy"
//                                                                         .tr,
//                                                                     overflow:
//                                                                         TextOverflow
//                                                                             .ellipsis,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtRubikRegular14Black900))
//                                                           ]),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 4,
//                                                               bottom: 5),
//                                                           child: CommonImageView(
//                                                               svgPath: ImageConstant
//                                                                   .imgArrowright12x7,
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       12.00),
//                                                               width:
//                                                                   getHorizontalSize(
//                                                                       7.00)))
//                                                     ]))),
//                                         Align(
//                                             alignment: Alignment.center,
//                                             child: Container(
//                                                 width:
//                                                     getHorizontalSize(194.00),
//                                                 margin: getMargin(
//                                                     top: 59, right: 1),
//                                                 child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       Row(
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           mainAxisSize:
//                                                               MainAxisSize.max,
//                                                           children: [
//                                                             Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         top: 1),
//                                                                 child: CommonImageView(
//                                                                     svgPath:
//                                                                         ImageConstant
//                                                                             .imgQuestion,
//                                                                     height:
//                                                                         getSize(
//                                                                             18.00),
//                                                                     width: getSize(
//                                                                         18.00))),
//                                                             Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         left:
//                                                                             11,
//                                                                         bottom:
//                                                                             1),
//                                                                 child: Text(
//                                                                     "lbl_help_center"
//                                                                         .tr,
//                                                                     overflow:
//                                                                         TextOverflow
//                                                                             .ellipsis,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtRubikRegular14Black900))
//                                                           ]),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 3,
//                                                               bottom: 2),
//                                                           child: CommonImageView(
//                                                               svgPath: ImageConstant
//                                                                   .imgArrowright12x7,
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       12.00),
//                                                               width:
//                                                                   getHorizontalSize(
//                                                                       7.00)))
//                                                     ]))),
//                                         Align(
//                                             alignment: Alignment.center,
//                                             child: Container(
//                                                 width:
//                                                     getHorizontalSize(194.00),
//                                                 margin: getMargin(
//                                                     top: 59, right: 1),
//                                                 child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       Row(
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           mainAxisSize:
//                                                               MainAxisSize.min,
//                                                           children: [
//                                                             CommonImageView(
//                                                                 svgPath:
//                                                                     ImageConstant
//                                                                         .imgSettings,
//                                                                 height: getSize(
//                                                                     18.00),
//                                                                 width: getSize(
//                                                                     18.00)),
//                                                             Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                         left:
//                                                                             12,
//                                                                         top: 1,
//                                                                         bottom:
//                                                                             1),
//                                                                 child: Text(
//                                                                     "lbl_settings"
//                                                                         .tr,
//                                                                     overflow:
//                                                                         TextOverflow
//                                                                             .ellipsis,
//                                                                     textAlign:
//                                                                         TextAlign
//                                                                             .left,
//                                                                     style: AppStyle
//                                                                         .txtRubikRegular14Black900))
//                                                           ]),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 3,
//                                                               bottom: 1),
//                                                           child: CommonImageView(
//                                                               svgPath: ImageConstant
//                                                                   .imgArrowright12x7,
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       12.00),
//                                                               width:
//                                                                   getHorizontalSize(
//                                                                       7.00)))
//                                                     ]))),
//                                         Padding(
//                                             padding:
//                                                 getPadding(top: 60, right: 10),
//                                             child: Row(
//                                                 mainAxisAlignment:
//                                                     MainAxisAlignment.start,
//                                                 crossAxisAlignment:
//                                                     CrossAxisAlignment.start,
//                                                 mainAxisSize: MainAxisSize.min,
//                                                 children: [
//                                                   Padding(
//                                                       padding: getPadding(
//                                                           top: 1, bottom: 6),
//                                                       child: CommonImageView(
//                                                           svgPath: ImageConstant
//                                                               .imgGroup88,
//                                                           height:
//                                                               getSize(15.00),
//                                                           width:
//                                                               getSize(15.00))),
//                                                   Padding(
//                                                       padding:
//                                                           getPadding(left: 15),
//                                                       child: Text(
//                                                           "lbl_logout".tr,
//                                                           overflow: TextOverflow
//                                                               .ellipsis,
//                                                           textAlign:
//                                                               TextAlign.left,
//                                                           style: AppStyle
//                                                               .txtRubikMedium18RedA703))
//                                                 ]))
//                                       ])),
//                               Padding(
//                                   padding: getPadding(left: 30),
//                                   child: InkWell(
//                                       borderRadius:
//                                           BorderRadiusStyle.customBorderTL30,
//                                       onTap: () {
//                                         onTapImgScreenshot2022();
//                                       },
//                                       child: ClipRRect(
//                                           borderRadius: BorderRadius.only(
//                                               topLeft: Radius.circular(
//                                                   getHorizontalSize(30.00)),
//                                               bottomLeft: Radius.circular(
//                                                   getHorizontalSize(30.00))),
//                                           child: CommonImageView(
//                                               imagePath: ImageConstant
//                                                   .imgScreenshot2022,
//                                               height: getVerticalSize(614.00),
//                                               width: getHorizontalSize(124.00),
//                                               fit: BoxFit.cover))))
//                             ]))))));
//   }

//   onTapImgScreenshot2022() {
//     Get.toNamed(AppRoutes.specialistScreenContainerScreen);
//   }
// }
