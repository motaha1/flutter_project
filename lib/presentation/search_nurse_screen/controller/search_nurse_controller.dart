import '/core/app_export.dart';import 'package:final_grad_proj/presentation/search_nurse_screen/models/search_nurse_model.dart';import 'package:flutter/material.dart';class SearchNurseController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchNurseModel> searchNurseModelObj = SearchNurseModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
