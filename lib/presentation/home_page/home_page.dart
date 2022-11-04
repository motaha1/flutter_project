import '../home_page/widgets/specialist1_item_widget.dart';
import '../home_page/widgets/specialist_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_model.dart';
import 'models/specialist1_item_model.dart';
import 'models/specialist_item_model.dart';
import 'package:final_grad_proj/core/app_export.dart';
import 'package:final_grad_proj/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatelessWidget {
  HomeController controller = Get.put(HomeController(HomeModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          decoration: AppDecoration.fillGray50,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  215.00,
                ),
                width: size.width,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: getMargin(
                          bottom: 10,
                        ),
                        decoration:
                            AppDecoration.gradientIndigoA400IndigoA401.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: size.width,
                                margin: getMargin(
                                  top: 28,
                                ),
                                child: Padding(
                                  padding: getPadding(
                                    left: 26,
                                    right: 25,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            21.00,
                                          ),
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgEllipse164,
                                          height: getSize(
                                            42.00,
                                          ),
                                          width: getSize(
                                            42.00,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 9,
                                          bottom: 9,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CommonImageView(
                                              svgPath:
                                                  ImageConstant.imgNotification,
                                              height: getSize(
                                                24.00,
                                              ),
                                              width: getSize(
                                                24.00,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 16,
                                              ),
                                              child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgGroup3637,
                                                height: getSize(
                                                  24.00,
                                                ),
                                                width: getSize(
                                                  24.00,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 26,
                                  top: 23,
                                  right: 26,
                                ),
                                child: Text(
                                  "lbl_hi_wajeed".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassBold24WhiteA700,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: getPadding(
                                  left: 26,
                                  top: 3,
                                  right: 26,
                                  bottom: 45,
                                ),
                                child: Text(
                                  "msg_looking_for_you".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtOverpassLight16WhiteA700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomSearchView(
                      width: 327,
                      focusNode: FocusNode(),
                      controller: controller.group3620Controller,
                      hintText: "msg_search_for_your".tr,
                      margin: getMargin(
                        left: 24,
                        top: 10,
                        right: 24,
                      ),
                      variant: SearchViewVariant.OutlineBlack90011,
                      shape: SearchViewShape.CircleBorder25,
                      fontStyle: SearchViewFontStyle.OverpassRegular13,
                      alignment: Alignment.bottomCenter,
                      prefix: Container(
                        margin: getMargin(
                          left: 22,
                          top: 18,
                          right: 10,
                          bottom: 18,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgSearch,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          14.00,
                        ),
                        minHeight: getSize(
                          14.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      top: 20,
                      bottom: 5,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 9,
                            right: 10,
                          ),
                          child: Text(
                            "lbl_top_categories".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtOverpassSemiBold16,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 9,
                              top: 8,
                              right: 6,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  decoration:
                                      AppDecoration.outlineBlack9000c1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder32,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(
                                            left: 8,
                                            top: 7,
                                            right: 8,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder25,
                                          ),
                                          child: Container(
                                            height: getSize(
                                              48.00,
                                            ),
                                            width: getSize(
                                              48.00,
                                            ),
                                            decoration: AppDecoration
                                                .gradientRed200PinkA100
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder25,
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      all: 12,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgIconsaxbroken,
                                                      height: getSize(
                                                        24.00,
                                                      ),
                                                      width: getSize(
                                                        24.00,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 11,
                                          top: 7,
                                          right: 11,
                                          bottom: 24,
                                        ),
                                        child: Text(
                                          "lbl_doctor".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtOverpassLight11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration:
                                      AppDecoration.outlineBlack9000c1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder32,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(
                                          left: 8,
                                          top: 7,
                                          right: 8,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder25,
                                        ),
                                        child: Container(
                                          height: getSize(
                                            48.00,
                                          ),
                                          width: getSize(
                                            48.00,
                                          ),
                                          decoration: AppDecoration
                                              .gradientTealA400TealA700
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder25,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    all: 16,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgCut,
                                                    height: getVerticalSize(
                                                      16.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      15.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 15,
                                            top: 8,
                                            right: 15,
                                            bottom: 23,
                                          ),
                                          child: Text(
                                            "lbl_nurse".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtOverpassLight11,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration:
                                      AppDecoration.outlineBlack9000c1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder32,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: getMargin(
                                            left: 8,
                                            top: 7,
                                            right: 8,
                                          ),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder25,
                                          ),
                                          child: Container(
                                            height: getSize(
                                              48.00,
                                            ),
                                            width: getSize(
                                              48.00,
                                            ),
                                            decoration: AppDecoration
                                                .gradientOrange200DeeporangeA200
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder25,
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 15,
                                                      top: 16,
                                                      right: 15,
                                                      bottom: 16,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath:
                                                          ImageConstant.imgBag,
                                                      height: getVerticalSize(
                                                        16.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        17.00,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 8,
                                          right: 10,
                                          bottom: 21,
                                        ),
                                        child: Text(
                                          "lbl_physician".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtOverpassLight11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration:
                                      AppDecoration.outlineBlack9000c1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder32,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(
                                          left: 8,
                                          top: 7,
                                          right: 8,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder25,
                                        ),
                                        child: Container(
                                          height: getSize(
                                            48.00,
                                          ),
                                          width: getSize(
                                            48.00,
                                          ),
                                          decoration: AppDecoration
                                              .gradientLightblue300BlueA200
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder25,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    left: 13,
                                                    top: 18,
                                                    right: 13,
                                                    bottom: 17,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgEye12X22,
                                                    height: getVerticalSize(
                                                      12.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      22.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 7,
                                          top: 8,
                                          right: 7,
                                          bottom: 21,
                                        ),
                                        child: Text(
                                          "lbl_baby_care".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtOverpassLight11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  decoration:
                                      AppDecoration.outlineBlack9000c1.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder32,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(
                                          left: 8,
                                          top: 7,
                                          right: 8,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder25,
                                        ),
                                        child: Container(
                                          height: getSize(
                                            48.00,
                                          ),
                                          width: getSize(
                                            48.00,
                                          ),
                                          decoration: AppDecoration
                                              .gradientGray600Bluegray902
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder25,
                                          ),
                                          child: Stack(
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: getPadding(
                                                    all: 16,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgSettings,
                                                    height: getSize(
                                                      16.00,
                                                    ),
                                                    width: getSize(
                                                      16.00,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 3,
                                          top: 8,
                                          right: 3,
                                          bottom: 21,
                                        ),
                                        child: Text(
                                          "lbl_elderly_care".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtOverpassLight11,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: double.infinity,
                            margin: getMargin(
                              top: 22,
                              right: 2,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  30.00,
                                ),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder32,
                                    ),
                                    child: Container(
                                      height: getVerticalSize(
                                        140.00,
                                      ),
                                      width: getHorizontalSize(
                                        373.00,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            30.00,
                                          ),
                                        ),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  30.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgFlatlaypills,
                                                height: getVerticalSize(
                                                  140.00,
                                                ),
                                                width: getHorizontalSize(
                                                  373.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 26,
                                                top: 14,
                                                right: 26,
                                                bottom: 14,
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: getHorizontalSize(
                                                      126.00,
                                                    ),
                                                    margin: getMargin(
                                                      left: 1,
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      "msg_save_extra_on".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOverpassBold20
                                                          .copyWith(
                                                        height: 1.05,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      123.00,
                                                    ),
                                                    margin: getMargin(
                                                      top: 11,
                                                      right: 10,
                                                    ),
                                                    child: Text(
                                                      "msg_etiam_mollis_me".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtOverpassLight12,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        4.00,
                                                      ),
                                                      margin: getMargin(
                                                        left: 10,
                                                        top: 10,
                                                      ),
                                                      child: SmoothIndicator(
                                                        offset: 0,
                                                        count: 3,
                                                        axisDirection:
                                                            Axis.horizontal,
                                                        effect:
                                                            ScrollingDotsEffect(
                                                          spacing: 4.5700073,
                                                          activeDotColor:
                                                              ColorConstant
                                                                  .indigoA400,
                                                          dotColor: ColorConstant
                                                              .bluegray90026,
                                                          dotHeight:
                                                              getVerticalSize(
                                                            4.00,
                                                          ),
                                                          dotWidth:
                                                              getHorizontalSize(
                                                            4.58,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 17,
                              top: 25,
                              right: 17,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "msg_popular_special".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRubikMedium18,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                    bottom: 2,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRubikLight12,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 1,
                                          top: 4,
                                          bottom: 3,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant
                                              .imgArrowleftBluegray500,
                                          height: getVerticalSize(
                                            6.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getVerticalSize(
                              286.00,
                            ),
                            width: getHorizontalSize(
                              595.00,
                            ),
                            child: Obx(
                              () => ListView.builder(
                                padding: getPadding(
                                  left: 9,
                                  top: 22,
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.homeModelObj.value
                                    .specialistItemList.length,
                                itemBuilder: (context, index) {
                                  SpecialistItemModel model = controller
                                      .homeModelObj
                                      .value
                                      .specialistItemList[index];
                                  return SpecialistItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(
                              left: 17,
                              top: 17,
                              right: 17,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "msg_feature_special".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRubikMedium18,
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                    bottom: 2,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        "lbl_see_all".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRubikLight12,
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 1,
                                          top: 4,
                                          bottom: 3,
                                        ),
                                        child: CommonImageView(
                                          svgPath: ImageConstant
                                              .imgArrowleftBluegray500,
                                          height: getVerticalSize(
                                            6.00,
                                          ),
                                          width: getHorizontalSize(
                                            3.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: getVerticalSize(
                              147.00,
                            ),
                            width: getHorizontalSize(
                              419.00,
                            ),
                            child: Obx(
                              () => ListView.builder(
                                padding: getPadding(
                                  left: 9,
                                  top: 22,
                                ),
                                scrollDirection: Axis.horizontal,
                                physics: BouncingScrollPhysics(),
                                itemCount: controller.homeModelObj.value
                                    .specialist1ItemList.length,
                                itemBuilder: (context, index) {
                                  Specialist1ItemModel model = controller
                                      .homeModelObj
                                      .value
                                      .specialist1ItemList[index];
                                  return Specialist1ItemWidget(
                                    model,
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
