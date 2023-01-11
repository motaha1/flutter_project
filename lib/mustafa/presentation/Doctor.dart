import 'package:flutter/cupertino.dart';

class ListFavItemModel {
  final String Name;
  final String Specialist;
  final String img;
  double rat;
  bool Fav;

  //هون بتم إضافة باقي الخصائص

  ListFavItemModel(@required this.Name,
      @required this.Specialist,
      @required this.img,
      @required this.rat,
      @required this.Fav);
}