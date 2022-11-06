import '../walkthrough_four_screen/widgets/sliderwaytotakecar_item_widget.dart';import 'controller/walkthrough_four_controller.dart';import 'models/sliderwaytotakecar_item_model.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:final_grad_proj/core/app_export.dart';import 'package:flutter/material.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class WalkthroughFourScreen extends GetWidget<WalkthroughFourController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: size.width, child: SingleChildScrollView(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(left: 40, top: 192, right: 40), child: CommonImageView(svgPath: ImageConstant.imgGroup1208214X214, height: getSize(214.00), width: getSize(214.00))), Padding(padding: getPadding(left: 40, top: 103, right: 40), child: Obx(() => CarouselSlider.builder(options: CarouselOptions(height: getVerticalSize(192.00), initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {controller.silderIndex.value = index;}), itemCount: controller.walkthroughFourModelObj.value.sliderwaytotakecarItemList.length, itemBuilder: (context, index, realIndex) {SliderwaytotakecarItemModel model = controller.walkthroughFourModelObj.value.sliderwaytotakecarItemList[index]; return SliderwaytotakecarItemWidget(model);}))), Padding(padding: getPadding(left: 40, top: 29, right: 38, bottom: 64), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [GestureDetector(onTap: () {onTapTxtSkip();}, child: Padding(padding: getPadding(top: 1), child: Text("lbl_skip".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOverpassRegular14))), Container(height: getVerticalSize(4.00), margin: getMargin(top: 7, bottom: 6), child: SmoothIndicator(offset: 0, count: 4, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 8, activeDotColor: ColorConstant.indigoA400, dotColor: ColorConstant.gray400, dotHeight: getVerticalSize(4.00), dotWidth: getHorizontalSize(4.00)))), GestureDetector(onTap: () {onTapTxtNext();}, child: Padding(padding: getPadding(bottom: 3), child: Text("lbl_next".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtOverpassBold14)))]))]))))); } 
onTapTxtSkip() { Get.toNamed(AppRoutes.welcomeScreen); } 
onTapTxtNext() { Get.toNamed(AppRoutes.welcomeScreen); } 
 }