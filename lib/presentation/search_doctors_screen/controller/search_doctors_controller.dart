import '/core/app_export.dart';import 'package:final_grad_proj/presentation/search_doctors_screen/models/search_doctors_model.dart';import 'package:flutter/material.dart';class SearchDoctorsController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchDoctorsModel> searchDoctorsModelObj = SearchDoctorsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
