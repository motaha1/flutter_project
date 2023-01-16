import '../controller/popup_controller.dart';
import '../models/popup_item_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PopupItemWidget extends StatelessWidget {
  PopupItemWidget(this.popupItemModelObj);

  PopupItemModel popupItemModelObj;

  var controller = Get.find<PopupController>();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  static List shareContact = [
    "1",
    "how are you",
    "1",
    "how are you",
    "1:50 am",
    "n",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(
        top: 20.0,
        right: 64,
        bottom: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomIconButton(
            height: 44,
            width: 44,
            child: CommonImageView(
              svgPath: ImageConstant.patient,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 12,
              top: 3,
              bottom: 3,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(
                    right: 10,
                  ),
                  child: Text(
                    shareContact[0],
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRajdhaniBold14.copyWith(
                      height: 1.29,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 2,
                      top: 3,
                    ),
                    child: Text(
                      shareContact[0].tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRubikRomanRegular12.copyWith(
                        height: 1.25,
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

  // @override
  // Widget build(BuildContext context) {
  //   return  Padding(
  //                                 padding: getPadding(
  //                                   top: 20.0,
  //                                   right: 64,
  //                                   bottom: 20.0,
  //                                 ),
  //                                 child: Row(
  //                                   crossAxisAlignment:
  //                                       CrossAxisAlignment.center,
  //                                   mainAxisSize: MainAxisSize.max,
  //                                   children: [
  //                                     CustomIconButton(
  //                                       height: 44,
  //                                       width: 44,
  //                                       child: CommonImageView(
  //                                           // svgPath: ImageConstant.imgFile,
  //                                           ),
  //                                     ),
  //                                     Padding(
  //                                       padding: getPadding(
  //                                         left: 12,
  //                                         top: 3,
  //                                         bottom: 3,
  //                                       ),
  //                                       child: Column(
  //                                         mainAxisSize: MainAxisSize.min,
  //                                         crossAxisAlignment:
  //                                             CrossAxisAlignment.start,
  //                                         mainAxisAlignment:
  //                                             MainAxisAlignment.start,
  //                                         children: [
  //                                           Padding(
  //                                             padding: getPadding(
  //                                               right: 10,
  //                                             ),
  //                                             child: Text(
  //                                               "documents",
  //                                               overflow: TextOverflow.ellipsis,
  //                                               textAlign: TextAlign.left,
  //                                               style: AppStyle
  //                                                   .txtRajdhaniBold14
  //                                                   .copyWith(
  //                                                 height: 1.29,
  //                                               ),
  //                                             ),
  //                                           ),
  //                                           Align(
  //                                             alignment: Alignment.center,
  //                                             child: Padding(
  //                                               padding: getPadding(
  //                                                 left: 2,
  //                                                 top: 3,
  //                                               ),
  //                                               child: Text(
  //                                                 "share_your_files",
  //                                                 overflow:
  //                                                     TextOverflow.ellipsis,
  //                                                 textAlign: TextAlign.left,
  //                                                 style: AppStyle
  //                                                     .txtRubikRomanRegular12
  //                                                     .copyWith(
  //                                                   height: 1.25,
  //                                                 ),
  //                                               ),
  //                                             ),
  //                                           ),
  //                               //             Padding(
  //                               //               padding: getPadding(
  //                               //                 right: 10,
  //                               //               ),
  //                               //               child: Text(
  //                               //                 "Create a poll",
  //                               //                 overflow: TextOverflow.ellipsis,
  //                               //                 textAlign: TextAlign.left,
  //                               //                 style: AppStyle
  //                               //                     .txtRajdhaniBold14
  //                               //                     .copyWith(
  //                               //                   height: 1.29,
  //                               //                 ),
  //                               //               ),
  //                               //             ),
  //                               //             Align(
  //                               //               alignment: Alignment.center,
  //                               //               child: Padding(
  //                               //                 padding: getPadding(
  //                               //                   left: 2,
  //                               //                   top: 3,
  //                               //                 ),
  //                               //                 child: Text(
  //                               //                   "Create a poll for any querry",
  //                               //                   overflow:
  //                               //                       TextOverflow.ellipsis,
  //                               //                   textAlign: TextAlign.left,
  //                               //                   style: AppStyle
  //                               //                       .txtRubikRomanRegular12
  //                               //                       .copyWith(
  //                               //                     height: 1.25,
  //                               //                   ),
  //                               //                 ),
  //                               //               ),
  //                               //             ),
  //                               //             Padding(
  //                               //               padding: getPadding(
  //                               //                 right: 10,
  //                               //               ),
  //                               //               child: Text(
  //                               //                 "Media",
  //                               //                 overflow: TextOverflow.ellipsis,
  //                               //                 textAlign: TextAlign.left,
  //                               //                 style: AppStyle
  //                               //                     .txtRajdhaniBold14
  //                               //                     .copyWith(
  //                               //                   height: 1.29,
  //                               //                 ),
  //                               //               ),
  //                               //             ),
  //                               //             Align(
  //                               //               alignment: Alignment.center,
  //                               //               child: Padding(
  //                               //                 padding: getPadding(
  //                               //                   left: 2,
  //                               //                   top: 3,
  //                               //                 ),
  //                               //                 child: Text(
  //                               //                   "Share photos and videos",
  //                               //                   overflow:
  //                               //                       TextOverflow.ellipsis,
  //                               //                   textAlign: TextAlign.left,
  //                               //                   style: AppStyle
  //                               //                       .txtRubikRomanRegular12
  //                               //                       .copyWith(
  //                               //                     height: 1.25,
  //                               //                   ),
  //                               //                 ),
  //                               //               ),
  //                               //             ),
  //                               //             Padding(
  //                               //               padding: getPadding(
  //                               //                 right: 10,
  //                               //               ),
  //                               //               child: Text(
  //                               //                 "Contact",
  //                               //                 overflow: TextOverflow.ellipsis,
  //                               //                 textAlign: TextAlign.left,
  //                               //                 style: AppStyle
  //                               //                     .txtRajdhaniBold14
  //                               //                     .copyWith(
  //                               //                   height: 1.29,
  //                               //                 ),
  //                               //               ),
  //                               //             ),
  //                               //             Align(
  //                               //               alignment: Alignment.center,
  //                               //               child: Padding(
  //                               //                 padding: getPadding(
  //                               //                   left: 2,
  //                               //                   top: 3,
  //                               //                 ),
  //                               //                 child: Text(
  //                               //                   "Share your contacts",
  //                               //                   overflow:
  //                               //                       TextOverflow.ellipsis,
  //                               //                   textAlign: TextAlign.left,
  //                               //                   style: AppStyle
  //                               //                       .txtRubikRomanRegular12
  //                               //                       .copyWith(
  //                               //                     height: 1.25,
  //                               //                   ),
  //                               //                 ),
  //                               //               ),
  //                               //             ),
  //                               //             Padding(
  //                               //               padding: getPadding(
  //                               //                 right: 10,
  //                               //               ),
  //                               //               child: Text(
  //                               //                 "Location",
  //                               //                 overflow: TextOverflow.ellipsis,
  //                               //                 textAlign: TextAlign.left,
  //                               //                 style: AppStyle
  //                               //                     .txtRajdhaniBold14
  //                               //                     .copyWith(
  //                               //                   height: 1.29,
  //                               //                 ),
  //                               //               ),
  //                               //             ),
  //                               //             Align(
  //                               //               alignment: Alignment.center,
  //                               //               child: Padding(
  //                               //                 padding: getPadding(
  //                               //                   left: 2,
  //                               //                   top: 3,
  //                               //                 ),
  //                               //                 child: Text(
  //                               //                   "Share your location",
  //                               //                   overflow:
  //                               //                       TextOverflow.ellipsis,
  //                               //                   textAlign: TextAlign.left,
  //                               //                   style: AppStyle
  //                               //                       .txtRubikRomanRegular12
  //                               //                       .copyWith(
  //                               //                     height: 1.25,
  //                               //                   ),
  //                               //                 ),
  //                               //               ),
  //                               //             ),
  //                               //           ],
  //                               //         ),
  //                               //       ),
  //                               //     ],
  //                               //   ),
  //                               // )
  //   throw UnimplementedError();
  // }
}
