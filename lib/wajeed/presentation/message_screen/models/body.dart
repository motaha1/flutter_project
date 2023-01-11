import 'package:final_grad_proj/wajeed/presentation/chat_page/widgets/chat_item_widget.dart';
import 'package:final_grad_proj/wajeed/presentation/message_screen/models/ChatMessage.dart';
import 'package:final_grad_proj/wajeed/presentation/popup_bottomsheet/controller/popup_controller.dart';
import 'package:final_grad_proj/wajeed/presentation/popup_bottomsheet/models/popup_item_model.dart';
import 'package:final_grad_proj/wajeed/presentation/popup_bottomsheet/popup_bottomsheet.dart';
import 'package:final_grad_proj/wajeed/presentation/popup_bottomsheet/widgets/popup_item_widget.dart';
import 'package:final_grad_proj/wajeed/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';
import '../../../theme/constants.dart';
import '../../../widgets/common_image_view.dart';
import 'message.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWidgetB extends StatefulWidget {


  @override
  State<MyWidgetB> createState() => Body();
}

class Body extends State<MyWidgetB> {
  static String message = "";
  var msgController = TextEditingController();
  PopupController controller = PopupController();
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  PopupBottomsheet ff = PopupBottomsheet();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: ListView.builder(
              itemCount: list.demeChatMessages.length,
              itemBuilder: (context, index) =>
                  Message(message: list.demeChatMessages[index]),
            ),
          ),
        ),
        Container(
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
            child: Row(children: [
              IconButton(
                  icon: Icon(Icons.attach_file, color: kColor),
                  onPressed: () {
                    pressAttach(context);
                  }),
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
                      SizedBox(width: kDefaultPadding / 4),
                      Expanded(
                        child: TextField(
                          controller: msgController,
                          decoration: InputDecoration(
                            hintText: "Type message",
                            border: InputBorder.none,
                          ),
                          onChanged: (value) {
                            message = value.toString();
                          },
                          onSubmitted: (value) {
                            final m = ChatMessage(
                                text: message,
                                messageType: ChatMessageType.text,
                                messageStatus: MessageStatus.viewed,
                                isSender: false);
                            list.demeChatMessages.add(m);

                            setState(() => msgController.clear());
                            print(list.demeChatMessages.length);
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
                        if (message != "") {
                          final m = ChatMessage(
                              text: message,
                              messageType: ChatMessageType.text,
                              messageStatus: MessageStatus.viewed,
                              isSender: true);
                          list.demeChatMessages.add(m);
                          setState(() => {msgController.clear(), message = ""});
                          print(list.demeChatMessages.length);
                        }
                      },
                    ),
                  ),
                ),
              )
            ]))
      ],
    );
  }

  pressAttach(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45.r), topRight: Radius.circular(45.r)),
        ),
        builder: (context) => Form(
            key: _formKey1,
            child: SingleChildScrollView(
                child: GestureDetector(
                    onTap: () {
                      //  onTapPopupuihut();
                    },
                    child: Container(
                        width: double.infinity,
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL40),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w, top: 24.h, right: 24.w),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 115.w,
                                                top: 1.h,
                                                bottom: 3.h),
                                            child: Text("share content",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRomanMedium16
                                                    .copyWith(height: 1.19)))
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44.h,
                                          width: 44.w,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.camera),
                                          //  CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        Column(children: [
                                          //  Padding(
                                          //     padding: EdgeInsets.only(
                                          //         top: 1.h, bottom: 8.h),
                                          // child:
                                          Text("Camera",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtRajdhaniBold14
                                                  .copyWith(height: 1.29)),
                                          //),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: 15.w,
                                                // top: 3.h,
                                              ),
                                              child: Text(
                                                "Share your files",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRubikRomanRegular12
                                                    .copyWith(
                                                  height: 1.25,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ])
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44.h,
                                          width: 44.w,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.document_scanner),
                                          // CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, bottom: 8.h),
                                                child: Text("Documents",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRajdhaniBold14
                                                        .copyWith(
                                                            height: 1.29))),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 15.w,
                                                  //top: 3.h,
                                                ),
                                                child: Text(
                                                  "Share your files",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanRegular12
                                                      .copyWith(
                                                    height: 1.25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44.h,
                                          width: 44.w,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.document_scanner),
                                          // CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, bottom: 8.h),
                                                child: Text("Create a poll",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRajdhaniBold14
                                                        .copyWith(
                                                            height: 1.29))),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 15.w,
                                                  //top: 3.h,
                                                ),
                                                child: Text(
                                                  "Create a poll for any querry",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanRegular12
                                                      .copyWith(
                                                    height: 1.25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44,
                                          width: 44,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.document_scanner),
                                          //  CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, bottom: 8.h),
                                                child: Text("Media",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRajdhaniBold14
                                                        .copyWith(
                                                            height: 1.29))),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 15.w,
                                                  //top: 3.h,
                                                ),
                                                child: Text(
                                                  "Share photos and videos",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanRegular12
                                                      .copyWith(
                                                    height: 1.25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44,
                                          width: 44,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.document_scanner),
                                          // CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, bottom: 8.h),
                                                child: Text("Contact",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRajdhaniBold14
                                                        .copyWith(
                                                            height: 1.29))),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 15.w,
                                                  //top: 3.h,
                                                ),
                                                child: Text(
                                                  "Share your contacts",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanRegular12
                                                      .copyWith(
                                                    height: 1.25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ])),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      top: 20.h,
                                      right: 24.w,
                                      bottom: 10.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomIconButton(
                                          height: 44,
                                          width: 44,
                                          variant:
                                              IconButtonVariant.FillGray102,
                                          onTap: () {
                                            //  onTapBtntf();
                                          },
                                          child: Icon(Icons.document_scanner),
                                          //  CommonImageView(
                                          //     svgPath:
                                          //         ImageConstant.imgCamera)
                                        ),
                                        // Padding(
                                        //   padding:  EdgeInsets.only(
                                        //      bottom: 8.h),
                                        //  child:
                                        Column(
                                          children: [
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    top: 1.h, bottom: 8.h),
                                                child: Text("Location",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRajdhaniBold14
                                                        .copyWith(
                                                            height: 1.29))),
                                            Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 15.w,
                                                    //top: 3.h,
                                                    bottom: 5.h),
                                                child: Text(
                                                  "Share your location",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRomanRegular12
                                                      .copyWith(
                                                    height: 1.25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ])),
                            ]))))));
  }
}
