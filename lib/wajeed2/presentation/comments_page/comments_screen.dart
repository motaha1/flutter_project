import 'package:final_grad_proj/wajeed2/presentation/commentsspecialist_screen/models/comments_list.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_button.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_search_view.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_text_form_field.dart';

import '../commentsspecialist_screen/widgets/listbg_one_item_widget.dart';
import 'controller/commentsspecialist_controller.dart';
import 'models/listbg_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/presentation/chat_page/chat_page.dart';
//import 'package:final_grad_proj/wajeed2/presentation/schedule_screen_page/schedule_screen_page.dart';
import 'package:final_grad_proj/wajeed2/presentation/specialist_screen_page/specialist_screen_page.dart';
import 'package:final_grad_proj/wajeed2/widgets/app_bar/appbar_image.dart';
import 'package:final_grad_proj/wajeed2/widgets/app_bar/appbar_subtitle_5.dart';
import 'package:final_grad_proj/wajeed2/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_bottom_bar.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_floating_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyWidgetCommentsPage extends StatefulWidget {
 

  @override
  State<MyWidgetCommentsPage> createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidgetCommentsPage> {
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  static int i = 0;
  String CommentText = "";
  static List<Comments> Commentslist = [
    const Comments(
        unlike: 3,
        like: 2,
        comment: "how are yougjfjhm" + "ngngngn",
        time: "1:50 am",
        Name: "Ahmaddddd4332"),
    const Comments(
        unlike: 3,
        like: 2,
        comment: "how are you",
        time: "1:50 am",
        Name: "Ahmaddddewwwd"),
    // const Comments(
    //     unlike: 3,
    //     like: 2,
    //     comment:
    //         "The case that I faced today was a girl suffering from a headache and a high temperature," +
    //             "I gave her medicine to reduce fever and soothe the headache",
    //     time: "1:50 am",
    //     Name: "Ahmadddffswedd"),
    // const Comments(
    //     unlike: 3,
    //     like: 2,
    //     comment: "how are you",
    //     time: "1:50 am",
    //     Name: "Ahmadddddfff"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConstant.indigoA400, //Colors.white,
      body: Container(
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
            Container(
                height: (50.h),
                width: size.width,
                child: Stack(alignment: Alignment.topCenter, children: [
                  CustomAppBar(
                    height: (size.height),
                    leadingWidth: 60,
                    title: AppbarSubtitle5(
                        text: "Comments".toUpperCase(),
                        margin: EdgeInsets.only(left: 115.w)),
                  )
                ])),
            Align(
                alignment: Alignment.topCenter,
                child: CustomSearchView(
                    width: 300.w,
                    focusNode: FocusNode(),
                    hintText: "msg_search_for_your".tr,
                    margin: EdgeInsets.only(left: 1.w),
                    prefix: Container(
                        margin: EdgeInsets.only(
                           left: 15.w,
                                  top: 0.h,
                                  right: 25.w,
                                  bottom: 0.h),
                        child:
                            CommonImageView(svgPath: ImageConstant.imgSearch)),
                    prefixConstraints: BoxConstraints(
                        minWidth: getSize(14.00), minHeight: getSize(14.00)))),
            Expanded(
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        margin: EdgeInsets.only(right: 1),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: size.height,
                                  width: size.width,
                                  decoration:
                                      BoxDecoration(color: Colors.white))),
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 40.w,
                                      //top: 40,
                                      right: 29.w,
                                      bottom: 40.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: ListView.builder(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              //shrinkWrap: true,
                                              itemCount: Commentslist.length,
                                              itemBuilder: (context, index) {
                                                i = index;
                                                return ListbgOneItemWidget(
                                                    Commentslist);
                                              }),
                                        ),
                                      ])))
                        ]))))
          ])),
     
    ));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
