import 'package:final_grad_proj/core/app_export.dart';
import 'package:flutter/cupertino.dart';

class Lang extends GetxController{


void changelang(String langcode){
Locale locale = Locale(langcode) ; 
Get.updateLocale(locale) ; 

}


}