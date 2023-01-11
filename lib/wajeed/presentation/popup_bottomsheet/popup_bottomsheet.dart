import '../popup_bottomsheet/widgets/popup_item_widget.dart';
import 'controller/popup_controller.dart';
import 'models/popup_item_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_icon_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore_for_file: must_be_immutable
class PopupBottomsheet extends StatelessWidget {
  PopupController controller = PopupController();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: marginZero,
    );
  }

  pressAttach(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45.r), topRight: Radius.circular(45.r)),
        ),
        builder: (context) => Form(
            key: _formKey1,
            child: SingleChildScrollView(
                child: GestureDetector(
                    onTap: () {
                      //  onTapPopupuihut();
                    },
                    child: Container(
                        width: double.infinity,
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL40),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w, top: 24.h, right: 24.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 115.w,
                                                top: 1.h,
                                                bottom: 3.h),
                                            child: Text("share content",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRomanMedium16
                                                    .copyWith(height: 1.19)))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44.h,
                                          width: 44.w,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.camera),
                                          //  CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        Column(children: [
                                          //  Padding(
                                          //     padding: EdgeInsets.only(
                                          //         top: 1.h, bottom: 8.h),
                                          // child:
                                          Text("Camera",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRajdhaniBold14
                                                  .copyWith(height: 1.29)),
                                          //),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 15.w,
                                                // top: 3.h,
                                              ),
                                              child: Text(
                                                "Share your files",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRomanRegular12
                                                    .copyWith(
                                                  height: 1.25,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ])
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44.h,
                                          width: 44.w,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.document_scanner),
                                          // CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, bottom: 8.h),
                                                child: Text("Documents",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRajdhaniBold14
                                                        .copyWith(
                                                            height: 1.29))),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 15.w,
                                                  //top: 3.h,
                                                ),
                                                child: Text(
                                                  "Share your files",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanRegular12
                                                      .copyWith(
                                                    height: 1.25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44.h,
                                          width: 44.w,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.document_scanner),
                                          // CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, bottom: 8.h),
                                                child: Text("Create a poll",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRajdhaniBold14
                                                        .copyWith(
                                                            height: 1.29))),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 15.w,
                                                  //top: 3.h,
                                                ),
                                                child: Text(
                                                  "Create a poll for any querry",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanRegular12
                                                      .copyWith(
                                                    height: 1.25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44,
                                          width: 44,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.document_scanner),
                                          //  CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, bottom: 8.h),
                                                child: Text("Media",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRajdhaniBold14
                                                        .copyWith(
                                                            height: 1.29))),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 15.w,
                                                  //top: 3.h,
                                                ),
                                                child: Text(
                                                  "Share photos and videos",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanRegular12
                                                      .copyWith(
                                                    height: 1.25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44,
                                          width: 44,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.document_scanner),
                                          // CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, bottom: 8.h),
                                                child: Text("Contact",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRajdhaniBold14
                                                        .copyWith(
                                                            height: 1.29))),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 15.w,
                                                  //top: 3.h,
                                                ),
                                                child: Text(
                                                  "Share your contacts",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanRegular12
                                                      .copyWith(
                                                    height: 1.25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44,
                                          width: 44,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.document_scanner),
                                          //  CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        // Padding(
                                        //   padding:  EdgeInsets.only(
                                        //      bottom: 8.h),
                                        //  child:
                                        Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, bottom: 8.h),
                                                child: Text("Location",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRajdhaniBold14
                                                        .copyWith(
                                                            height: 1.29))),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15.w,
                                                    //top: 3.h,
                                                    bottom: 5.h),
                                                child: Text(
                                                  "Share your location",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanRegular12
                                                      .copyWith(
                                                    height: 1.25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ])),
                            ]))))));
  }
}

onTapPopupuihut() {
  //Get.toNamed(AppRoutes.messageScreen);
}

onTapBtntf() async {
  await PermissionManager.askForPermission(Permission.camera);
  await PermissionManager.askForPermission(Permission.storage);
  List<String?>? imageList = [];
//TODO: Permission - use imageList for using selected images
  await FileManager().showModelSheetForImage(getImages: (value) async {
    imageList = value;
  });
}
