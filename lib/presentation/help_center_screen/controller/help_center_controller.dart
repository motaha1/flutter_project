import '/core/app_export.dart';import 'package:final_grad_proj/presentation/help_center_screen/models/help_center_model.dart';import 'package:flutter/material.dart';class HelpCenterController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<HelpCenterModel> helpCenterModelObj = HelpCenterModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
