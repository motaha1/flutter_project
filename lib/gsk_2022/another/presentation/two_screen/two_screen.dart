import 'controller/two_controller.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/one_page/one_page.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class TwoScreen extends GetWidget<TwoController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Obx(() => getCurrentWidget(controller.type.value))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              controller.type.value = type;
            })));
  }

  Widget getCurrentWidget(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group:
        return OnePage();
      case BottomBarEnum.Groupbluegray400:
        return getDefaultWidget();
      case BottomBarEnum.Groupbluegray40020x26:
        return getDefaultWidget();
      case BottomBarEnum.Groupbluegray40019x21:
        return getDefaultWidget();
      default:
        return getDefaultWidget();
    }
  }
}
