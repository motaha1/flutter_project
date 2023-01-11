import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:final_grad_proj/wajeed/presentation/chat_page/chat_page.dart';
import '../../theme/constants.dart';
import '../../widgets/custom_icon_button.dart';
import 'models/body.dart';
import 'package:final_grad_proj/wajeed/presentation/message_screen/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class MyWidgetMS extends StatefulWidget {


  @override
  State<MyWidgetMS> createState() => MessagesScreen();
}

class MessagesScreen extends State<MyWidgetMS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MyWidgetB(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(221, 34, 4, 207),
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 22,
            ),
            onPressed: () {
              list.demeChatMessages.clear();
              onPressBackarrow();
            },
          ),
          SizedBox(width: kDefaultPadding * 0.75),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ChatPage.NameUser,
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Active 3m ago",
                style: TextStyle(fontSize: 12),
              )
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.videocam),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPadding / 2),
      ],
    );
  }

  onPressBackarrow() {
    Get.toNamed(AppRoutes.chatpage);
  }
}
