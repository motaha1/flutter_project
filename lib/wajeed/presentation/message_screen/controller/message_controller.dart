import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/presentation/message_screen/models/message_model.dart';
import 'package:flutter/material.dart';

class MessageController extends GetxController {
  TextEditingController searchboxuihuController = TextEditingController();

  Rx<MessageModel> messageModelObj = MessageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    searchboxuihuController.dispose();
  }
}
