import 'package:get/get.dart';
import '../chat_page.dart';
import 'chat_item_model.dart';

class ChatModel {
  RxList<ChatItemModel> chatItemList =
      RxList.filled(ChatPage.userchats.length, ChatItemModel());
}
