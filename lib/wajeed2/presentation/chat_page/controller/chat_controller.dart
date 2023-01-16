import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/presentation/chat_page/models/chat_model.dart';
import 'package:flutter/cupertino.dart';

class ChatController extends GetxController {
  Rx<ChatModel> chatModelObj = ChatModel().obs;
  TextEditingController group3620Controller = TextEditingController();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
