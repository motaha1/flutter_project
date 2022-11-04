import '/core/app_export.dart';import 'package:final_grad_proj/presentation/favourite_specialists_screen/models/favourite_specialists_model.dart';import 'package:flutter/material.dart';class FavouriteSpecialistsController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<FavouriteSpecialistsModel> favouriteSpecialistsModelObj = FavouriteSpecialistsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
