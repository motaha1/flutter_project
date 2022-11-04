import '/core/app_export.dart';import 'package:final_grad_proj/presentation/search_physician_screen/models/search_physician_model.dart';import 'package:flutter/material.dart';class SearchPhysicianController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<SearchPhysicianModel> searchPhysicianModelObj = SearchPhysicianModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
