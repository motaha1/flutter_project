import '/core/app_export.dart';import 'package:final_grad_proj/presentation/users_screen/models/users_model.dart';
class UsersController extends GetxController
 {Rx<UsersModel> usersModelObj = UsersModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
