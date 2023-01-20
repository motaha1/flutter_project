//import 'package:fina_proj/core/app_export.dart';
import 'package:final_grad_proj/models/SpecialistProfile.dart';
import 'package:final_grad_proj/models/user_api.dart';
import 'package:final_grad_proj/wajeed2/presentation/calls_screen/calls_screen.dart';
import 'package:final_grad_proj/wajeed2/presentation/calls_screen/models/usercall.dart';
import 'package:final_grad_proj/wajeed2/presentation/chat_page/chat_page.dart';
import '../../theme/constants.dart';
import 'models/body.dart';
import 'package:final_grad_proj/wajeed2/presentation/message_screen/models/ChatMessage.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';

class taha_copy extends StatefulWidget {

 SpecialistProfile? api = SpecialistProfile() ; 
 taha_copy(this.api) ; 

  @override
  State<taha_copy> createState() => MessagesScreen(api);
}

class MessagesScreen extends State<taha_copy> {
  // userChat usercall =
  //     userChat(countmessage: "", subtitel: "", time: "", titel: "");

 SpecialistProfile? api = SpecialistProfile() ; 
   


   MessagesScreen(this.api) ; 
  late usercall usercall2 =usercall(titel: '', subtitel: '') ;
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
                api?.user?.username ??'Othman Othman',
                style: TextStyle(fontSize: 16),
              ),
    
            ],
          )
        ],
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.local_phone),
          onPressed: () async {
            usercall2.titel = ChatPage.userchats[ChatPage.i].titel;
            usercall2.subtitel = "call outgoing";
            CallsScreen.usercall1.add(usercall2);
            const number = '08592119XXXX'; //set the number here
         //   await FlutterPhoneDirectCaller.callNumber(number);
          },
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
