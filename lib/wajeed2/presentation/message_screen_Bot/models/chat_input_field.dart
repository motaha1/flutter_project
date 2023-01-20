import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/wajeed2/presentation/message_screen/message_screen.dart';
import 'package:final_grad_proj/wajeed2/presentation/message_screen/models/ChatMessage.dart';
import 'package:final_grad_proj/wajeed2/presentation/message_screen/models/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import '../../../core/app_export.dart';
import '../../../theme/constants.dart';

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => ChatInputField();
}

class ChatInputField extends State<MyWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
//class ChatInputField extends StatelessWidget {
  // const ChatInputField({
  //   Key? key,
  // }) ;//: super(key: key);
  static String message = "";

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Consumer<AuthProvider>(builder: (context, provider, x) {
      return Container(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 2,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 32,
              color: Color(0xFF087949).withOpacity(0.08),
            ),
          ],
        ),
        child: SafeArea(
          child: Row(
            children: [
              Icon(Icons.attach_file, color: kColor),
              SizedBox(width: kDefaultPadding),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultPadding * 0.75,
                  ),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Icons.sentiment_satisfied_alt_outlined,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.64),
                      ),
                      SizedBox(width: kDefaultPadding / 4),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Type message",
                            border: InputBorder.none,
                          ),
                          onChanged: (value) async {
                            message = value.toString();
           
                            //  onPressSend();
                            print(message);
                          },
                        ),
                      ),
                      Icon(
                        Icons.mic,
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .color!
                            .withOpacity(0.64),
                      ),
                      SizedBox(width: kDefaultPadding / 4),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: kColor, borderRadius: BorderRadius.circular(200)),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {
                                            
                        final m = ChatMessage(
                            text: message,
                            messageType: ChatMessageType.text,
                            messageStatus: MessageStatus.viewed,
                            isSender: true);
                        list.demeChatMessages.add(m);

                      
                        setState(() => MessagesScreen);
                        print(list.demeChatMessages.length);
                        print(list.demeChatMessages[i++].text);

                     
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  onPressSend() {}
}
