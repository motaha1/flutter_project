import '/core/app_export.dart';import 'package:final_grad_proj/presentation/search_elderly_care_screen/models/search_elderly_care_model.dart';import 'package:flutter/material.dart';class SearchElderlyCareController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchElderlyCareModel> searchElderlyCareModelObj = SearchElderlyCareModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
