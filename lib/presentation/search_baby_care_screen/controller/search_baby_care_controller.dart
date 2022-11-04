import '/core/app_export.dart';import 'package:final_grad_proj/presentation/search_baby_care_screen/models/search_baby_care_model.dart';import 'package:flutter/material.dart';class SearchBabyCareController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchBabyCareModel> searchBabyCareModelObj = SearchBabyCareModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
