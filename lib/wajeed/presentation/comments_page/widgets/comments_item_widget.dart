// import '../controller/comments_controller.dart';
// import '../models/comments_item_model.dart';
// import 'package:flutter/material.dart';
// import 'package:final_grad_proj/wajeed/core/app_export.dart';

// // ignore: must_be_immutable
// class CommentsItemWidget extends StatelessWidget {
//   CommentsItemWidget(this.commentsItemModelObj);

//   CommentsItemModel commentsItemModelObj;

//   var controller = Get.find<CommentsController>();

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       clipBehavior: Clip.antiAlias,
//       elevation: 0,
//       margin: getMargin(
//         top: 6.5099945,
//         bottom: 6.5099945,
//       ),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadiusStyle.roundedBorder24,
//       ),
//       child: Container(
//         height: getVerticalSize(
//           170.00,
//         ),
//         width: getHorizontalSize(
//           305.00,
//         ),
//         decoration: AppDecoration.outlineBlack90026.copyWith(
//           borderRadius: BorderRadiusStyle.roundedBorder24,
//         ),
//         child: Stack(
//           alignment: Alignment.bottomCenter,
//           children: [
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Container(
//                 height: getVerticalSize(
//                   170.00,
//                 ),
//                 width: getHorizontalSize(
//                   305.00,
//                 ),
//                 margin: getMargin(
//                   top: 1,
//                 ),
//                 decoration: BoxDecoration(
//                   color: ColorConstant.gray51,
//                   borderRadius: BorderRadius.circular(
//                     getHorizontalSize(
//                       24.40,
//                     ),
//                   ),
//                   border: Border.all(
//                     color: ColorConstant.gray200,
//                     width: getHorizontalSize(
//                       0.81,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding: getPadding(
//                   left: 10,
//                   top: 10,
//                   right: 7,
//                   bottom: 2,
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Align(
//                       alignment: Alignment.centerLeft,
//                       child: Padding(
//                         padding: getPadding(
//                           right: 10,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           crossAxisAlignment: CrossAxisAlignment.end,
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(
//                                 getHorizontalSize(
//                                   21.00,
//                                 ),
//                               ),
//                               child: CommonImageView(
//                                 imagePath: ImageConstant.imgEllipse164,
//                                 height: getSize(
//                                   42.00,
//                                 ),
//                                 width: getSize(
//                                   42.00,
//                                 ),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Padding(
//                               padding: getPadding(
//                                 left: 12,
//                                 top: 20,
//                                 bottom: 4,
//                               ),
//                               child: Text(
//                                 "lbl_dr_wajeed".tr,
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtLatoBold14.copyWith(
//                                   height: 1.21,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                         width: getHorizontalSize(
//                           279.00,
//                         ),
//                         margin: getMargin(
//                           left: 8,
//                           top: 12,
//                         ),
//                         child: Text(
//                           "msg_the_case_that_i".tr,
//                           maxLines: null,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtLatoRegular12.copyWith(
//                             height: 1.29,
//                           ),
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Container(
//                         height: getVerticalSize(
//                           1.00,
//                         ),
//                         width: getHorizontalSize(
//                           268.00,
//                         ),
//                         margin: getMargin(
//                           left: 7,
//                           top: 8,
//                           right: 11,
//                         ),
//                         decoration: BoxDecoration(
//                           color: ColorConstant.gray200,
//                         ),
//                       ),
//                     ),
//                     Align(
//                       alignment: Alignment.center,
//                       child: Padding(
//                         padding: getPadding(
//                           left: 7,
//                           top: 26,
//                           right: 11,
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisSize: MainAxisSize.max,
//                           children: [
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Padding(
//                                   padding: getPadding(
//                                     top: 8,
//                                     bottom: 1,
//                                   ),
//                                   child: Text(
//                                     "lbl_1".tr,
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: AppStyle.txtLatoLight12.copyWith(
//                                       height: 1.25,
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: getPadding(
//                                     left: 4,
//                                   ),
//                                   child: CommonImageView(
//                                     svgPath: ImageConstant.imgThumbsup,
//                                     height: getSize(
//                                       24.00,
//                                     ),
//                                     width: getSize(
//                                       24.00,
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: getPadding(
//                                     left: 12,
//                                   ),
//                                   child: CommonImageView(
//                                     svgPath: ImageConstant.imgIconsaxlinear,
//                                     height: getSize(
//                                       24.00,
//                                     ),
//                                     width: getSize(
//                                       24.00,
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: getPadding(
//                                     left: 3,
//                                     top: 4,
//                                     bottom: 4,
//                                   ),
//                                   child: Text(
//                                     "lbl_1".tr,
//                                     overflow: TextOverflow.ellipsis,
//                                     textAlign: TextAlign.left,
//                                     style: AppStyle.txtLatoLight12.copyWith(
//                                       height: 1.25,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding: getPadding(
//                                 top: 1,
//                                 bottom: 8,
//                               ),
//                               child: Text(
//                                 "msg_yesterday_07_35".tr,
//                                 overflow: TextOverflow.ellipsis,
//                                 textAlign: TextAlign.left,
//                                 style: AppStyle.txtRubikRomanRegular12.copyWith(
//                                   height: 1.25,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
