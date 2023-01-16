import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import '../../theme/constants.dart';
import 'models/body.dart';
import 'package:final_grad_proj/wajeed2/presentation/message_screen_Bot/models/ChatMessage.dart';
import 'package:flutter/material.dart';

class MyWidgetMSB extends StatefulWidget {
 
  @override
  State<MyWidgetMSB> createState() => MessageBotScreen();
}

class MessageBotScreen extends State<MyWidgetMSB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: MyWidgetBot(),
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
                "Chat Bot",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "Online Always",
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
      Get.toNamed(Get.previousRoute);
  }
}
