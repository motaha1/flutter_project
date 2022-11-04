import '/core/app_export.dart';import 'package:final_grad_proj/presentation/home_page/models/home_model.dart';import 'package:flutter/material.dart';class HomeController extends GetxController {HomeController(this.homeModelObj);

TextEditingController group3620Controller = TextEditingController();

Rx<HomeModel> homeModelObj;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); group3620Controller.dispose(); } 
 }
