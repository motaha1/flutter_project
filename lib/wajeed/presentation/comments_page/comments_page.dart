// import '../comments_page/widgets/comments_item_widget.dart';
// import 'controller/comments_controller.dart';
// import 'models/comments_item_model.dart';
// import 'models/comments_model.dart';
// import 'package:flutter/material.dart';
// import 'package:final_grad_proj/wajeed/core/app_export.dart';
// import 'package:final_grad_proj/wajeed/widgets/app_bar/appbar_image.dart';
// import 'package:final_grad_proj/wajeed/widgets/app_bar/appbar_subtitle_5.dart';
// import 'package:final_grad_proj/wajeed/widgets/app_bar/custom_app_bar.dart';

// // ignore_for_file: must_be_immutable
// class CommentsPage extends StatelessWidget {
//   CommentsController controller =
//       Get.put(CommentsController(CommentsModel().obs));

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             body: Container(
//                 decoration: AppDecoration.fillWhiteA700,
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                           height: getVerticalSize(209.00),
//                           width: size.width,
//                           child: Stack(alignment: Alignment.topLeft, children: [
//                             Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: CommonImageView(
//                                     imagePath:
//                                         ImageConstant.imgBgIndigoA400209x375,
//                                     height: getVerticalSize(209.00),
//                                     width: getHorizontalSize(375.00))),
//                             CustomAppBar(
//                                 height: getVerticalSize(56.00),
//                                 leadingWidth: 40,
//                                 leading: AppbarImage(
//                                     height: getSize(20.00),
//                                     width: getSize(20.00),
//                                     svgPath:
//                                         ImageConstant.imgArrowleftWhiteA700,
//                                     margin: getMargin(left: 20),
//                                     onTap: onTapArrowleft),
//                                 title: AppbarSubtitle5(
//                                     text: "lbl_comments".tr.toUpperCase(),
//                                     margin: getMargin(left: 11)),
//                                 actions: [
//                                   AppbarImage(
//                                       height: getSize(20.00),
//                                       width: getSize(20.00),
//                                       svgPath: ImageConstant.imgSearchWhiteA700,
//                                       margin: getMargin(left: 44, right: 44))
//                                 ])
//                           ])),
//                       Expanded(
//                           child: SingleChildScrollView(
//                               child: Container(
//                                   height: size.height,
//                                   width: size.width,
//                                   margin: getMargin(right: 1),
//                                   child: Stack(
//                                       alignment: Alignment.center,
//                                       children: [
//                                         Align(
//                                             alignment: Alignment.centerLeft,
//                                             child: Container(
//                                                 height: size.height,
//                                                 width: size.width,
//                                                 decoration: BoxDecoration(
//                                                     color:
//                                                         ColorConstant.gray51))),
//                                         Align(
//                                             alignment: Alignment.center,
//                                             child: Padding(
//                                                 padding: getPadding(
//                                                     left: 40,
//                                                     top: 40,
//                                                     right: 29,
//                                                     bottom: 40),
//                                                 child: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.min,
//                                                     crossAxisAlignment:
//                                                         CrossAxisAlignment
//                                                             .start,
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Obx(() =>
//                                                           ListView.builder(
//                                                               physics:
//                                                                   NeverScrollableScrollPhysics(),
//                                                               shrinkWrap: true,
//                                                               itemCount: controller
//                                                                   .commentsModelObj
//                                                                   .value
//                                                                   .commentsItemList
//                                                                   .length,
//                                                               itemBuilder:
//                                                                   (context,
//                                                                       index) {
//                                                                 CommentsItemModel
//                                                                     model =
//                                                                     controller
//                                                                         .commentsModelObj
//                                                                         .value
//                                                                         .commentsItemList[index];
//                                                                 return CommentsItemWidget(
//                                                                     model);
//                                                               })),
//                                                       Card(
//                                                           clipBehavior:
//                                                               Clip.antiAlias,
//                                                           elevation: 0,
//                                                           margin: getMargin(
//                                                               top: 12),
//                                                           shape: RoundedRectangleBorder(
//                                                               borderRadius:
//                                                                   BorderRadiusStyle
//                                                                       .roundedBorder24),
//                                                           child: Container(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       109.00),
//                                                               width:
//                                                                   getHorizontalSize(
//                                                                       305.00),
//                                                               decoration: AppDecoration
//                                                                   .outlineBlack90026
//                                                                   .copyWith(
//                                                                       borderRadius:
//                                                                           BorderRadiusStyle
//                                                                               .roundedBorder24),
//                                                               child: Stack(
//                                                                   alignment:
//                                                                       Alignment
//                                                                           .bottomCenter,
//                                                                   children: [
//                                                                     Align(
//                                                                         alignment:
//                                                                             Alignment
//                                                                                 .centerLeft,
//                                                                         child: Container(
//                                                                             height:
//                                                                                 getVerticalSize(109.00),
//                                                                             width: getHorizontalSize(305.00),
//                                                                             margin: getMargin(top: 1),
//                                                                             decoration: BoxDecoration(color: ColorConstant.gray51, borderRadius: BorderRadius.circular(getHorizontalSize(24.40)), border: Border.all(color: ColorConstant.gray200, width: getHorizontalSize(0.81))))),
//                                                                     Align(
//                                                                         alignment:
//                                                                             Alignment.bottomCenter,
//                                                                         child: Padding(
//                                                                             padding: getPadding(left: 10, top: 10, right: 7, bottom: 1),
//                                                                             child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
//                                                                               Align(
//                                                                                   alignment: Alignment.centerLeft,
//                                                                                   child: Padding(
//                                                                                       padding: getPadding(right: 10),
//                                                                                       child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
//                                                                                         ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(21.00)), child: CommonImageView(imagePath: ImageConstant.imgEllipse164, height: getSize(42.00), width: getSize(42.00), fit: BoxFit.cover)),
//                                                                                         Padding(padding: getPadding(left: 12, top: 20, bottom: 4), child: Text("lbl_dr_wajeed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold14.copyWith(height: 1.21)))
//                                                                                       ]))),
//                                                                               Align(alignment: Alignment.center, child: Container(width: getHorizontalSize(279.00), margin: getMargin(left: 8, top: 12), child: Text("msg_the_case_that_i".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12.copyWith(height: 1.29))))
//                                                                             ])))
//                                                                   ])))
//                                                     ])))
//                                       ]))))
//                     ]))));
//   }

//   onTapArrowleft() {
//     Get.back();
//   }
// }
