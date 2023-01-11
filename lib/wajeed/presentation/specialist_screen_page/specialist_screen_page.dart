// import '../specialist_screen_page/widgets/listdw_item_widget.dart';
// import '../specialist_screen_page/widgets/listone_eleven_item_widget.dart';
// import '../specialist_screen_page/widgets/listone_three_item_widget.dart';
// import 'controller/specialist_screen_controller.dart';
// import 'models/listdw_item_model.dart';
// import 'models/listone_eleven_item_model.dart';
// import 'models/listone_three_item_model.dart';
// import 'models/specialist_screen_model.dart';
// import 'package:flutter/material.dart';
// import 'package:final_grad_proj/wajeed/core/app_export.dart';
// import 'package:final_grad_proj/wajeed/widgets/app_bar/appbar_image.dart';
// import 'package:final_grad_proj/wajeed/widgets/app_bar/custom_app_bar.dart';
// import 'package:final_grad_proj/wajeed/widgets/custom_button.dart';
// import 'package:final_grad_proj/wajeed/widgets/custom_drop_down.dart';
// import 'package:final_grad_proj/wajeed/widgets/custom_search_view.dart';

// // ignore_for_file: must_be_immutable
// class SpecialistScreenPage extends StatelessWidget {
//   SpecialistScreenController controller =
//       Get.put(SpecialistScreenController(SpecialistScreenModel().obs));

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: ColorConstant.whiteA700,
//         body: Container(
//           decoration: AppDecoration.fillWhiteA700,
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: SingleChildScrollView(
//                   child: Container(
//                     height: getVerticalSize(
//                       1186.00,
//                     ),
//                     width: size.width,
//                     margin: getMargin(
//                       bottom: 18,
//                     ),
//                     child: Stack(
//                       alignment: Alignment.bottomCenter,
//                       children: [
//                         Align(
//                           alignment: Alignment.topLeft,
//                           child: Container(
//                             height: getVerticalSize(
//                               865.00,
//                             ),
//                             width: size.width,
//                             margin: getMargin(
//                               bottom: 10,
//                             ),
//                             child: Stack(
//                               alignment: Alignment.topLeft,
//                               children: [
//                                 Align(
//                                   alignment: Alignment.centerLeft,
//                                   child: CommonImageView(
//                                     imagePath: ImageConstant.imgBg,
//                                     height: getVerticalSize(
//                                       865.00,
//                                     ),
//                                     width: getHorizontalSize(
//                                       375.00,
//                                     ),
//                                   ),
//                                 ),
//                                 Align(
//                                   alignment: Alignment.topLeft,
//                                   child: Padding(
//                                     padding: getPadding(
//                                       bottom: 10,
//                                     ),
//                                     child: Column(
//                                       mainAxisSize: MainAxisSize.min,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.start,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         Container(
//                                           height: getVerticalSize(
//                                             239.00,
//                                           ),
//                                           width: size.width,
//                                           child: Stack(
//                                             alignment: Alignment.bottomCenter,
//                                             children: [
//                                               Align(
//                                                 alignment: Alignment.topLeft,
//                                                 child: Container(
//                                                   margin: getMargin(
//                                                     bottom: 10,
//                                                   ),
//                                                   decoration: AppDecoration
//                                                       .gradientIndigoA400IndigoA401
//                                                       .copyWith(
//                                                     borderRadius:
//                                                         BorderRadiusStyle
//                                                             .customBorderBL20,
//                                                   ),
//                                                   child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       CustomAppBar(
//                                                         height: getVerticalSize(
//                                                           56.00,
//                                                         ),
//                                                         leadingWidth: 68,
//                                                         leading: Padding(
//                                                           padding: getPadding(
//                                                             left: 26,
//                                                           ),
//                                                           child: ClipRRect(
//                                                             borderRadius:
//                                                                 BorderRadius
//                                                                     .circular(
//                                                               getHorizontalSize(
//                                                                 21.00,
//                                                               ),
//                                                             ),
//                                                             child:
//                                                                 CommonImageView(
//                                                               imagePath:
//                                                                   ImageConstant
//                                                                       .imgEllipse164,
//                                                               height: getSize(
//                                                                 42.00,
//                                                               ),
//                                                               width: getSize(
//                                                                 42.00,
//                                                               ),
//                                                               fit: BoxFit.cover,
//                                                             ),
//                                                           ),
//                                                         ),
//                                                         actions: [
//                                                           AppbarImage(
//                                                             height: getSize(
//                                                               17.00,
//                                                             ),
//                                                             width: getSize(
//                                                               17.00,
//                                                             ),
//                                                             svgPath:
//                                                                 ImageConstant
//                                                                     .patient,
//                                                             margin: getMargin(
//                                                               left: 29,
//                                                               top: 13,
//                                                               bottom: 12,
//                                                             ),
//                                                           ),
//                                                           AppbarImage(
//                                                             height: getSize(
//                                                               24.00,
//                                                             ),
//                                                             width: getSize(
//                                                               24.00,
//                                                             ),
//                                                             svgPath: ImageConstant
//                                                                 .imgNotification,
//                                                             margin: getMargin(
//                                                               left: 10,
//                                                               top: 9,
//                                                               bottom: 9,
//                                                             ),
//                                                           ),
//                                                           AppbarImage(
//                                                             height: getSize(
//                                                               17.00,
//                                                             ),
//                                                             width: getSize(
//                                                               17.00,
//                                                             ),
//                                                             svgPath:
//                                                                 ImageConstant
//                                                                     .patient,
//                                                             margin: getMargin(
//                                                               left: 13,
//                                                               top: 13,
//                                                               right: 29,
//                                                               bottom: 12,
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                       Align(
//                                                         alignment: Alignment
//                                                             .centerLeft,
//                                                         child: Container(
//                                                           margin: getMargin(
//                                                             left: 19,
//                                                             top: 17,
//                                                             right: 19,
//                                                             bottom: 73,
//                                                           ),
//                                                           child: RichText(
//                                                             text: TextSpan(
//                                                               children: [
//                                                                 TextSpan(
//                                                                   text:
//                                                                       "lbl_good_morning"
//                                                                           .tr,
//                                                                   style:
//                                                                       TextStyle(
//                                                                     color: ColorConstant
//                                                                         .black903,
//                                                                     fontSize:
//                                                                         getFontSize(
//                                                                       20,
//                                                                     ),
//                                                                     fontFamily:
//                                                                         'Poppins',
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .w400,
//                                                                   ),
//                                                                 ),
//                                                                 TextSpan(
//                                                                   text: " ",
//                                                                   style:
//                                                                       TextStyle(
//                                                                     color: ColorConstant
//                                                                         .pinkA200,
//                                                                     fontSize:
//                                                                         getFontSize(
//                                                                       20,
//                                                                     ),
//                                                                     fontFamily:
//                                                                         'Poppins',
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .w400,
//                                                                   ),
//                                                                 ),
//                                                                 TextSpan(
//                                                                   text:
//                                                                       "lbl_dr_ahmad"
//                                                                           .tr,
//                                                                   style:
//                                                                       TextStyle(
//                                                                     color: ColorConstant
//                                                                         .whiteA700,
//                                                                     fontSize:
//                                                                         getFontSize(
//                                                                       22,
//                                                                     ),
//                                                                     fontFamily:
//                                                                         'Poppins',
//                                                                     fontWeight:
//                                                                         FontWeight
//                                                                             .w400,
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             ),
//                                                             textAlign:
//                                                                 TextAlign.left,
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                               CustomSearchView(
//                                                 width: 327,
//                                                 focusNode: FocusNode(),
//                                                 controller: controller
//                                                     .group3620Controller,
//                                                 hintText:
//                                                     "msg_search_for_your".tr,
//                                                 margin: getMargin(
//                                                   left: 24,
//                                                   top: 10,
//                                                   right: 24,
//                                                 ),
//                                                 alignment:
//                                                     Alignment.bottomCenter,
//                                                 prefix: Container(
//                                                   margin: getMargin(
//                                                     left: 22,
//                                                     top: 18,
//                                                     right: 10,
//                                                     bottom: 18,
//                                                   ),
//                                                   child: CommonImageView(
//                                                     svgPath:
//                                                         ImageConstant.imgSearch,
//                                                   ),
//                                                 ),
//                                                 prefixConstraints:
//                                                     BoxConstraints(
//                                                   minWidth: getSize(
//                                                     14.00,
//                                                   ),
//                                                   minHeight: getSize(
//                                                     14.00,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                         Align(
//                                           alignment: Alignment.center,
//                                           child: Padding(
//                                             padding: getPadding(
//                                               left: 91,
//                                               top: 13,
//                                               right: 91,
//                                             ),
//                                             child: Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               mainAxisSize: MainAxisSize.min,
//                                               children: [
//                                                 Padding(
//                                                   padding: getPadding(
//                                                     top: 1,
//                                                     bottom: 1,
//                                                   ),
//                                                   child: Text(
//                                                     "msg_visits_for_today".tr,
//                                                     overflow:
//                                                         TextOverflow.ellipsis,
//                                                     textAlign: TextAlign.left,
//                                                     // style: AppStyle
//                                                     //     .txtPoppinsMedium18,
//                                                   ),
//                                                 ),
//                                                 Padding(
//                                                   padding: getPadding(
//                                                     left: 9,
//                                                   ),
//                                                   child: Text(
//                                                     "lbl_104".tr,
//                                                     overflow:
//                                                         TextOverflow.ellipsis,
//                                                     textAlign: TextAlign.left,
//                                                     // style: AppStyle
//                                                     //     .txtPoppinsMedium20,
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         Align(
//                                           alignment: Alignment.center,
//                                           child: Padding(
//                                             padding: getPadding(
//                                               left: 3,
//                                               right: 2,
//                                             ),
//                                             child: Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment
//                                                       .spaceBetween,
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.center,
//                                               mainAxisSize: MainAxisSize.max,
//                                               children: [
//                                                 Container(
//                                                   // decoration: AppDecoration
//                                                   //     .fillGreenA1008c
//                                                   //     .copyWith(
//                                                   //   borderRadius:
//                                                   //       BorderRadiusStyle
//                                                   //           .roundedBorder18,
//                                                   // ),
//                                                   child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Align(
//                                                         alignment: Alignment
//                                                             .centerLeft,
//                                                         child: Padding(
//                                                           padding: getPadding(
//                                                             left: 21,
//                                                             top: 14,
//                                                             right: 21,
//                                                           ),
//                                                           child: Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             crossAxisAlignment:
//                                                                 CrossAxisAlignment
//                                                                     .center,
//                                                             mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   top: 4,
//                                                                   bottom: 4,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_new_patients"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   // style: AppStyle
//                                                                   //     .txtPoppinsMedium14
//                                                                   //     .copyWith(
//                                                                   //   letterSpacing:
//                                                                   //       0.14,
//                                                                   // ),
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   left: 5,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_40".tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   // style: AppStyle
//                                                                   //     .txtPoppinsMedium20,
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       CustomButton(
//                                                         width: 89,
//                                                         text: "lbl_51".tr,
//                                                         margin: getMargin(
//                                                           left: 21,
//                                                           top: 4,
//                                                           right: 21,
//                                                           bottom: 28,
//                                                         ),
//                                                         // variant: ButtonVariant
//                                                         //     .FillGreen100,
//                                                         // shape: ButtonShape
//                                                         //     .RoundedBorder12,
//                                                         // padding: ButtonPadding
//                                                         //     .PaddingAll4,
//                                                         // fontStyle: ButtonFontStyle
//                                                         //     .PoppinsRegular14,
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                                 Container(
//                                                   margin: getMargin(
//                                                     top: 1,
//                                                     bottom: 1,
//                                                   ),
//                                                   // decoration: AppDecoration
//                                                   //     .fillDeeporange50
//                                                   //     .copyWith(
//                                                   //   borderRadius:
//                                                   //       BorderRadiusStyle
//                                                   //           .roundedBorder18,
//                                                   // ),
//                                                   child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .center,
//                                                     children: [
//                                                       Align(
//                                                         alignment: Alignment
//                                                             .centerLeft,
//                                                         child: Padding(
//                                                           padding: getPadding(
//                                                             left: 13,
//                                                             top: 11,
//                                                             right: 13,
//                                                           ),
//                                                           child: Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .start,
//                                                             crossAxisAlignment:
//                                                                 CrossAxisAlignment
//                                                                     .center,
//                                                             mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   top: 4,
//                                                                   bottom: 4,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_old_patients"
//                                                                       .tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   // style: AppStyle
//                                                                   //     .txtPoppinsMedium14
//                                                                   //     .copyWith(
//                                                                   //   letterSpacing:
//                                                                   //       0.14,
//                                                                   // ),
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   left: 11,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_64".tr,
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   // style: AppStyle
//                                                                   //     .txtPoppinsMedium20,
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       CustomButton(
//                                                         width: 59,
//                                                         text: "lbl_202".tr,
//                                                         margin: getMargin(
//                                                           left: 13,
//                                                           top: 11,
//                                                           right: 13,
//                                                           bottom: 33,
//                                                         ),
//                                                         // variant: ButtonVariant
//                                                         //     .FillDeeporange100,
//                                                         // shape: ButtonShape
//                                                         //     .RoundedBorder8,
//                                                         // padding: ButtonPadding
//                                                         //     .PaddingAll1,
//                                                         // fontStyle: ButtonFontStyle
//                                                         //     .PoppinsRegular1229,
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         Container(
//                                           width: double.infinity,
//                                           margin: getMargin(
//                                             top: 11,
//                                           ),
//                                           decoration: AppDecoration
//                                               .fillWhiteA700
//                                               .copyWith(
//                                                   // borderRadius: BorderRadiusStyle
//                                                   //     .roundedBorder18,
//                                                   ),
//                                           child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.end,
//                                             children: [
//                                               Align(
//                                                 alignment: Alignment.center,
//                                                 child: Container(
//                                                   height: getVerticalSize(
//                                                     30.00,
//                                                   ),
//                                                   width: getHorizontalSize(
//                                                     353.00,
//                                                   ),
//                                                   margin: getMargin(
//                                                     left: 11,
//                                                     top: 9,
//                                                     right: 10,
//                                                   ),
//                                                   child: Stack(
//                                                     alignment:
//                                                         Alignment.centerLeft,
//                                                     children: [
//                                                       Align(
//                                                         alignment: Alignment
//                                                             .bottomRight,
//                                                         child: Padding(
//                                                           padding: getPadding(
//                                                             left: 22,
//                                                             top: 10,
//                                                             right: 22,
//                                                             bottom: 4,
//                                                           ),
//                                                           child: Text(
//                                                             "lbl_september_2022"
//                                                                 .tr,
//                                                             overflow:
//                                                                 TextOverflow
//                                                                     .ellipsis,
//                                                             textAlign:
//                                                                 TextAlign.left,
//                                                             // style: AppStyle
//                                                             //     .txtPoppinsRegular1229
//                                                             //     .copyWith(
//                                                             //   letterSpacing:
//                                                             //       0.12,
//                                                             // ),
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Align(
//                                                         alignment: Alignment
//                                                             .centerLeft,
//                                                         child: Row(
//                                                           crossAxisAlignment:
//                                                               CrossAxisAlignment
//                                                                   .center,
//                                                           mainAxisSize:
//                                                               MainAxisSize.max,
//                                                           children: [
//                                                             Text(
//                                                               "lbl_calendar".tr,
//                                                               overflow:
//                                                                   TextOverflow
//                                                                       .ellipsis,
//                                                               textAlign:
//                                                                   TextAlign
//                                                                       .left,
//                                                               // style: AppStyle
//                                                               //     .txtPoppinsMedium20
//                                                               //     .copyWith(
//                                                               //   letterSpacing:
//                                                               //       0.20,
//                                                               // ),
//                                                             ),
//                                                             Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                 left: 239,
//                                                                 top: 6,
//                                                                 bottom: 5,
//                                                               ),
//                                                               child:
//                                                                   CommonImageView(
//                                                                 svgPath:
//                                                                     ImageConstant
//                                                                         .imgCheckmark17x17,
//                                                                 height: getSize(
//                                                                   17.00,
//                                                                 ),
//                                                                 width: getSize(
//                                                                   17.00,
//                                                                 ),
//                                                               ),
//                                                             ),
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                               Align(
//                                                 alignment:
//                                                     Alignment.centerRight,
//                                                 child: Padding(
//                                                   padding: getPadding(
//                                                     left: 10,
//                                                     top: 17,
//                                                     right: 10,
//                                                   ),
//                                                   child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.end,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .center,
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     children: [
//                                                       CommonImageView(
//                                                         svgPath: ImageConstant
//                                                             .imgCheckmark1,
//                                                         height: getSize(
//                                                           17.00,
//                                                         ),
//                                                         width: getSize(
//                                                           17.00,
//                                                         ),
//                                                       ),
//                                                       Padding(
//                                                         padding: getPadding(
//                                                           left: 21,
//                                                         ),
//                                                         child: CommonImageView(
//                                                           svgPath: ImageConstant
//                                                               .imgArrowright17x17,
//                                                           height: getSize(
//                                                             17.00,
//                                                           ),
//                                                           width: getSize(
//                                                             17.00,
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                               Align(
//                                                 alignment: Alignment.center,
//                                                 child: Container(
//                                                   height: getVerticalSize(
//                                                     1.00,
//                                                   ),
//                                                   width: getHorizontalSize(
//                                                     348.00,
//                                                   ),
//                                                   margin: getMargin(
//                                                     left: 10,
//                                                     top: 5,
//                                                     right: 10,
//                                                   ),
//                                                   decoration: BoxDecoration(
//                                                     color: ColorConstant
//                                                         .bluegray100,
//                                                   ),
//                                                 ),
//                                               ),
//                                               Align(
//                                                 alignment: Alignment.center,
//                                                 child: Padding(
//                                                   padding: getPadding(
//                                                     left: 10,
//                                                     top: 21,
//                                                     right: 10,
//                                                   ),
//                                                   child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                         alignment:
//                                                             Alignment.center,
//                                                         child: Padding(
//                                                           padding: getPadding(
//                                                             left: 3,
//                                                             right: 4,
//                                                           ),
//                                                           child: Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .spaceBetween,
//                                                             crossAxisAlignment:
//                                                                 CrossAxisAlignment
//                                                                     .center,
//                                                             mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   bottom: 1,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_sun"
//                                                                       .tr
//                                                                       .toUpperCase(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular1094,
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   top: 1,
//                                                                   bottom: 1,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_mon"
//                                                                       .tr
//                                                                       .toUpperCase(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular1094,
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   top: 1,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_tue"
//                                                                       .tr
//                                                                       .toUpperCase(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular1094,
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   top: 1,
//                                                                   bottom: 1,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_wed"
//                                                                       .tr
//                                                                       .toUpperCase(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular1094,
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   top: 1,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_thu"
//                                                                       .tr
//                                                                       .toUpperCase(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular1094,
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   bottom: 1,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_fri"
//                                                                       .tr
//                                                                       .toUpperCase(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular1094,
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   bottom: 1,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_sat"
//                                                                       .tr
//                                                                       .toUpperCase(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular1094,
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Align(
//                                                         alignment: Alignment
//                                                             .centerRight,
//                                                         child: Padding(
//                                                           padding: getPadding(
//                                                             left: 217,
//                                                             top: 9,
//                                                             right: 5,
//                                                           ),
//                                                           child: Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .end,
//                                                             crossAxisAlignment:
//                                                                 CrossAxisAlignment
//                                                                     .center,
//                                                             mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .min,
//                                                             children: [
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   top: 1,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_1"
//                                                                       .tr
//                                                                       .toUpperCase(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular1531,
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   left: 46,
//                                                                   bottom: 1,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_2"
//                                                                       .tr
//                                                                       .toUpperCase(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular1531,
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   left: 43,
//                                                                   top: 1,
//                                                                   bottom: 1,
//                                                                 ),
//                                                                 child: Text(
//                                                                   "lbl_3"
//                                                                       .tr
//                                                                       .toUpperCase(),
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .left,
//                                                                   style: AppStyle
//                                                                       .txtPoppinsRegular1531,
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Align(
//                                                         alignment:
//                                                             Alignment.center,
//                                                         child: Padding(
//                                                           padding: getPadding(
//                                                             left: 4,
//                                                             top: 12,
//                                                             right: 2,
//                                                           ),
//                                                           child: Row(
//                                                             mainAxisAlignment:
//                                                                 MainAxisAlignment
//                                                                     .spaceBetween,
//                                                             crossAxisAlignment:
//                                                                 CrossAxisAlignment
//                                                                     .start,
//                                                             mainAxisSize:
//                                                                 MainAxisSize
//                                                                     .max,
//                                                             children: [
//                                                               Expanded(
//                                                                 child: Padding(
//                                                                   padding:
//                                                                       getPadding(
//                                                                     bottom: 6,
//                                                                   ),
//                                                                   child: Obx(
//                                                                     () => ListView
//                                                                         .builder(
//                                                                       physics:
//                                                                           NeverScrollableScrollPhysics(),
//                                                                       shrinkWrap:
//                                                                           true,
//                                                                       itemCount: controller
//                                                                           .specialistScreenModelObj
//                                                                           .value
//                                                                           .listoneThreeItemList
//                                                                           .length,
//                                                                       itemBuilder:
//                                                                           (context,
//                                                                               index) {
//                                                                         ListoneThreeItemModel model = controller
//                                                                             .specialistScreenModelObj
//                                                                             .value
//                                                                             .listoneThreeItemList[index];
//                                                                         return ListoneThreeItemWidget(
//                                                                           model,
//                                                                         );
//                                                                       },
//                                                                     ),
//                                                                   ),
//                                                                 ),
//                                                               ),
//                                                               Container(
//                                                                 height:
//                                                                     getVerticalSize(
//                                                                   64.00,
//                                                                 ),
//                                                                 width:
//                                                                     getHorizontalSize(
//                                                                   67.00,
//                                                                 ),
//                                                                 margin:
//                                                                     getMargin(
//                                                                   top: 1,
//                                                                 ),
//                                                                 child: Stack(
//                                                                   alignment:
//                                                                       Alignment
//                                                                           .topRight,
//                                                                   children: [
//                                                                     Align(
//                                                                       alignment:
//                                                                           Alignment
//                                                                               .topLeft,
//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             getPadding(
//                                                                           left:
//                                                                               3,
//                                                                           right:
//                                                                               10,
//                                                                           bottom:
//                                                                               10,
//                                                                         ),
//                                                                         child:
//                                                                             Text(
//                                                                           "lbl_7"
//                                                                               .tr
//                                                                               .toUpperCase(),
//                                                                           overflow:
//                                                                               TextOverflow.ellipsis,
//                                                                           textAlign:
//                                                                               TextAlign.left,
//                                                                           style:
//                                                                               AppStyle.txtPoppinsRegular1531,
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     Align(
//                                                                       alignment:
//                                                                           Alignment
//                                                                               .topRight,
//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             getPadding(
//                                                                           left:
//                                                                               10,
//                                                                           top:
//                                                                               1,
//                                                                           right:
//                                                                               2,
//                                                                           bottom:
//                                                                               10,
//                                                                         ),
//                                                                         child:
//                                                                             Text(
//                                                                           "lbl_8"
//                                                                               .tr
//                                                                               .toUpperCase(),
//                                                                           overflow:
//                                                                               TextOverflow.ellipsis,
//                                                                           textAlign:
//                                                                               TextAlign.left,
//                                                                           style:
//                                                                               AppStyle.txtPoppinsRegular1531,
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     Align(
//                                                                       alignment:
//                                                                           Alignment
//                                                                               .bottomLeft,
//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             getPadding(
//                                                                           top:
//                                                                               10,
//                                                                           right:
//                                                                               10,
//                                                                         ),
//                                                                         child:
//                                                                             Column(
//                                                                           mainAxisSize:
//                                                                               MainAxisSize.min,
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.start,
//                                                                           children: [
//                                                                             Align(
//                                                                               alignment: Alignment.centerRight,
//                                                                               child: Container(
//                                                                                 height: getVerticalSize(
//                                                                                   6.00,
//                                                                                 ),
//                                                                                 width: getHorizontalSize(
//                                                                                   7.00,
//                                                                                 ),
//                                                                                 margin: getMargin(
//                                                                                   left: 10,
//                                                                                 ),
//                                                                                 decoration: BoxDecoration(
//                                                                                   color: ColorConstant.redA701,
//                                                                                   borderRadius: BorderRadius.circular(
//                                                                                     getHorizontalSize(
//                                                                                       3.80,
//                                                                                     ),
//                                                                                   ),
//                                                                                 ),
//                                                                               ),
//                                                                             ),
//                                                                             Align(
//                                                                               alignment: Alignment.centerLeft,
//                                                                               child: Container(
//                                                                                 height: getVerticalSize(
//                                                                                   28.00,
//                                                                                 ),
//                                                                                 width: getHorizontalSize(
//                                                                                   15.00,
//                                                                                 ),
//                                                                                 margin: getMargin(
//                                                                                   top: 7,
//                                                                                   right: 10,
//                                                                                 ),
//                                                                                 child: Stack(
//                                                                                   alignment: Alignment.bottomCenter,
//                                                                                   children: [
//                                                                                     Align(
//                                                                                       alignment: Alignment.topCenter,
//                                                                                       child: Padding(
//                                                                                         padding: getPadding(
//                                                                                           bottom: 10,
//                                                                                         ),
//                                                                                         child: Text(
//                                                                                           "lbl_14".tr.toUpperCase(),
//                                                                                           overflow: TextOverflow.ellipsis,
//                                                                                           textAlign: TextAlign.left,
//                                                                                           style: AppStyle.txtPoppinsRegular1532,
//                                                                                         ),
//                                                                                       ),
//                                                                                     ),
//                                                                                     Align(
//                                                                                       alignment: Alignment.bottomCenter,
//                                                                                       child: Container(
//                                                                                         height: getVerticalSize(
//                                                                                           6.00,
//                                                                                         ),
//                                                                                         width: getHorizontalSize(
//                                                                                           7.00,
//                                                                                         ),
//                                                                                         margin: getMargin(
//                                                                                           left: 3,
//                                                                                           top: 10,
//                                                                                           right: 3,
//                                                                                         ),
//                                                                                         decoration: BoxDecoration(
//                                                                                           color: ColorConstant.redA701,
//                                                                                           borderRadius: BorderRadius.circular(
//                                                                                             getHorizontalSize(
//                                                                                               3.80,
//                                                                                             ),
//                                                                                           ),
//                                                                                         ),
//                                                                                       ),
//                                                                                     ),
//                                                                                   ],
//                                                                                 ),
//                                                                               ),
//                                                                             ),
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     Align(
//                                                                       alignment:
//                                                                           Alignment
//                                                                               .bottomRight,
//                                                                       child:
//                                                                           Padding(
//                                                                         padding:
//                                                                             getPadding(
//                                                                           left:
//                                                                               10,
//                                                                           top:
//                                                                               10,
//                                                                           bottom:
//                                                                               6,
//                                                                         ),
//                                                                         child:
//                                                                             Text(
//                                                                           "lbl_15"
//                                                                               .tr
//                                                                               .toUpperCase(),
//                                                                           overflow:
//                                                                               TextOverflow.ellipsis,
//                                                                           textAlign:
//                                                                               TextAlign.left,
//                                                                           style:
//                                                                               AppStyle.txtPoppinsRegular1531,
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ],
//                                                                 ),
//                                                               ),
//                                                               Padding(
//                                                                 padding:
//                                                                     getPadding(
//                                                                   top: 1,
//                                                                   bottom: 6,
//                                                                 ),
//                                                                 child: Column(
//                                                                   mainAxisSize:
//                                                                       MainAxisSize
//                                                                           .min,
//                                                                   crossAxisAlignment:
//                                                                       CrossAxisAlignment
//                                                                           .start,
//                                                                   mainAxisAlignment:
//                                                                       MainAxisAlignment
//                                                                           .start,
//                                                                   children: [
//                                                                     Align(
//                                                                       alignment:
//                                                                           Alignment
//                                                                               .centerRight,
//                                                                       child:
//                                                                           Container(
//                                                                         width:
//                                                                             getHorizontalSize(
//                                                                           64.00,
//                                                                         ),
//                                                                         margin:
//                                                                             getMargin(
//                                                                           left:
//                                                                               3,
//                                                                         ),
//                                                                         child:
//                                                                             Row(
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.spaceBetween,
//                                                                           crossAxisAlignment:
//                                                                               CrossAxisAlignment.center,
//                                                                           mainAxisSize:
//                                                                               MainAxisSize.max,
//                                                                           children: [
//                                                                             Padding(
//                                                                               padding: getPadding(
//                                                                                 bottom: 1,
//                                                                               ),
//                                                                               child: Text(
//                                                                                 "lbl_9".tr.toUpperCase(),
//                                                                                 overflow: TextOverflow.ellipsis,
//                                                                                 textAlign: TextAlign.left,
//                                                                                 style: AppStyle.txtPoppinsRegular1531,
//                                                                               ),
//                                                                             ),
//                                                                             Padding(
//                                                                               padding: getPadding(
//                                                                                 top: 1,
//                                                                               ),
//                                                                               child: Text(
//                                                                                 "lbl_10".tr.toUpperCase(),
//                                                                                 overflow: TextOverflow.ellipsis,
//                                                                                 textAlign: TextAlign.left,
//                                                                                 style: AppStyle.txtPoppinsRegular1531,
//                                                                               ),
//                                                                             ),
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                     Align(
//                                                                       alignment:
//                                                                           Alignment
//                                                                               .center,
//                                                                       child:
//                                                                           Container(
//                                                                         width:
//                                                                             getHorizontalSize(
//                                                                           66.00,
//                                                                         ),
//                                                                         margin:
//                                                                             getMargin(
//                                                                           top:
//                                                                               11,
//                                                                           right:
//                                                                               1,
//                                                                         ),
//                                                                         child:
//                                                                             Row(
//                                                                           mainAxisAlignment:
//                                                                               MainAxisAlignment.spaceBetween,
//                                                                           crossAxisAlignment:
//                                                                               CrossAxisAlignment.center,
//                                                                           mainAxisSize:
//                                                                               MainAxisSize.max,
//                                                                           children: [
//                                                                             Padding(
//                                                                               padding: getPadding(
//                                                                                 top: 1,
//                                                                               ),
//                                                                               child: Text(
//                                                                                 "lbl_16".tr.toUpperCase(),
//                                                                                 overflow: TextOverflow.ellipsis,
//                                                                                 textAlign: TextAlign.left,
//                                                                                 style: AppStyle.txtPoppinsRegular1531,
//                                                                               ),
//                                                                             ),
//                                                                             Padding(
//                                                                               padding: getPadding(
//                                                                                 bottom: 1,
//                                                                               ),
//                                                                               child: Text(
//                                                                                 "lbl_17".tr.toUpperCase(),
//                                                                                 overflow: TextOverflow.ellipsis,
//                                                                                 textAlign: TextAlign.left,
//                                                                                 style: AppStyle.txtPoppinsRegular1532,
//                                                                               ),
//                                                                             ),
//                                                                           ],
//                                                                         ),
//                                                                       ),
//                                                                     ),
//                                                                   ],
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                         ),
//                                                       ),
//                                                       Padding(
//                                                         padding: getPadding(
//                                                           top: 6,
//                                                         ),
//                                                         child: Obx(
//                                                           () =>
//                                                               ListView.builder(
//                                                             physics:
//                                                                 NeverScrollableScrollPhysics(),
//                                                             shrinkWrap: true,
//                                                             itemCount: controller
//                                                                 .specialistScreenModelObj
//                                                                 .value
//                                                                 .listoneElevenItemList
//                                                                 .length,
//                                                             itemBuilder:
//                                                                 (context,
//                                                                     index) {
//                                                               ListoneElevenItemModel
//                                                                   model =
//                                                                   controller
//                                                                       .specialistScreenModelObj
//                                                                       .value
//                                                                       .listoneElevenItemList[index];
//                                                               return ListoneElevenItemWidget(
//                                                                 model,
//                                                               );
//                                                             },
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                               Align(
//                                                 alignment: Alignment.center,
//                                                 child: Padding(
//                                                   padding: getPadding(
//                                                     left: 10,
//                                                     top: 24,
//                                                     right: 10,
//                                                   ),
//                                                   child: Row(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment
//                                                             .spaceBetween,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       Text(
//                                                         "lbl_upcoming".tr,
//                                                         overflow: TextOverflow
//                                                             .ellipsis,
//                                                         textAlign:
//                                                             TextAlign.left,
//                                                         style: AppStyle
//                                                             .txtManropeBold2048
//                                                             .copyWith(
//                                                           height: 1.37,
//                                                         ),
//                                                       ),
//                                                       Padding(
//                                                         padding: getPadding(
//                                                           top: 1,
//                                                           bottom: 7,
//                                                         ),
//                                                         child: Text(
//                                                           "lbl_view_all".tr,
//                                                           overflow: TextOverflow
//                                                               .ellipsis,
//                                                           textAlign:
//                                                               TextAlign.left,
//                                                           style: AppStyle
//                                                               .txtPoppinsRegular1229BlueA400
//                                                               .copyWith(
//                                                             height: 1.55,
//                                                             decoration:
//                                                                 TextDecoration
//                                                                     .underline,
//                                                           ),
//                                                         ),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 margin: getMargin(
//                                                   top: 9,
//                                                   bottom: 1,
//                                                 ),
//                                                 decoration: AppDecoration
//                                                     .fillGray105
//                                                     .copyWith(
//                                                   borderRadius:
//                                                       BorderRadiusStyle
//                                                           .roundedBorder10,
//                                                 ),
//                                                 child: Row(
//                                                   mainAxisAlignment:
//                                                       MainAxisAlignment.start,
//                                                   crossAxisAlignment:
//                                                       CrossAxisAlignment.start,
//                                                   mainAxisSize:
//                                                       MainAxisSize.max,
//                                                   children: [
//                                                     CustomButton(
//                                                       width: 46,
//                                                       text: "lbl_m".tr,
//                                                       margin: getMargin(
//                                                         left: 8,
//                                                         top: 8,
//                                                         bottom: 8,
//                                                       ),
//                                                     ),
//                                                     Padding(
//                                                       padding: getPadding(
//                                                         left: 15,
//                                                         top: 7,
//                                                         bottom: 10,
//                                                       ),
//                                                       child: Column(
//                                                         mainAxisSize:
//                                                             MainAxisSize.min,
//                                                         crossAxisAlignment:
//                                                             CrossAxisAlignment
//                                                                 .start,
//                                                         mainAxisAlignment:
//                                                             MainAxisAlignment
//                                                                 .start,
//                                                         children: [
//                                                           Align(
//                                                             alignment: Alignment
//                                                                 .center,
//                                                             child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                 left: 1,
//                                                               ),
//                                                               child: Text(
//                                                                 "msg_montly_doctor_s"
//                                                                     .tr,
//                                                                 overflow:
//                                                                     TextOverflow
//                                                                         .ellipsis,
//                                                                 textAlign:
//                                                                     TextAlign
//                                                                         .left,
//                                                                 style: AppStyle
//                                                                     .txtPoppinsMedium1639,
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Padding(
//                                                             padding: getPadding(
//                                                               top: 2,
//                                                               right: 10,
//                                                             ),
//                                                             child: Text(
//                                                               "msg_8_april_2021"
//                                                                   .tr,
//                                                               overflow:
//                                                                   TextOverflow
//                                                                       .ellipsis,
//                                                               textAlign:
//                                                                   TextAlign
//                                                                       .left,
//                                                               style: AppStyle
//                                                                   .txtPoppinsRegular1229Black90099,
//                                                             ),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment.bottomCenter,
//                           child: Padding(
//                             padding: getPadding(
//                               left: 8,
//                               top: 10,
//                               right: 10,
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Align(
//                                   alignment: Alignment.center,
//                                   child: Padding(
//                                     padding: getPadding(
//                                       left: 3,
//                                       right: 1,
//                                     ),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.end,
//                                       mainAxisSize: MainAxisSize.max,
//                                       children: [
//                                         Text(
//                                           "lbl_patient_list".tr,
//                                           overflow: TextOverflow.ellipsis,
//                                           textAlign: TextAlign.left,
//                                           style: AppStyle.txtPoppinsMedium20,
//                                         ),
//                                         CustomDropDown(
//                                           width: 62,
//                                           focusNode: FocusNode(),
//                                           icon: Container(
//                                             margin: getMargin(
//                                               left: 9,
//                                             ),
//                                             child: CommonImageView(
//                                               svgPath:
//                                                   ImageConstant.imgArrowdown,
//                                             ),
//                                           ),
//                                           hintText: "lbl_today".tr,
//                                           margin: getMargin(
//                                             top: 7,
//                                             bottom: 2,
//                                           ),
//                                           items: controller
//                                               .specialistScreenModelObj
//                                               .value
//                                               .dropdownItemList,
//                                           onChanged: (value) {
//                                             controller.onSelected(value);
//                                           },
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: getPadding(
//                                     top: 13,
//                                   ),
//                                   child: Obx(
//                                     () => ListView.builder(
//                                       physics: NeverScrollableScrollPhysics(),
//                                       shrinkWrap: true,
//                                       itemCount: controller
//                                           .specialistScreenModelObj
//                                           .value
//                                           .listdwItemList
//                                           .length,
//                                       itemBuilder: (context, index) {
//                                         ListdwItemModel model = controller
//                                             .specialistScreenModelObj
//                                             .value
//                                             .listdwItemList[index];
//                                         return ListdwItemWidget(
//                                           model,
//                                         );
//                                       },
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
