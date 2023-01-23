import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/wajeed2/presentation/commentsspecialist_screen/models/comments_list.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_button.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_search_view.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_text_form_field.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';

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
import 'package:final_grad_proj/wajeed2/widgets/custom_bottom_barS.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_floating_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentsspecialistScreen extends StatefulWidget {


  @override
  State<CommentsspecialistScreen> createState() => MyWidgetState();
}

class MyWidgetState extends State<CommentsspecialistScreen> {
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  static int i = 0;
  String CommentText = "";
  //String name = Provider.of<AuthProvider>(context).user_api.user.username.toString() ; 
  static List<Comments> Commentslist = [
    const Comments(
        unlike: 0,
        like: 1,
        comment: "how are every one" ,
        time: "",
        Name:"ammar kmail" ),
    // const Comments(
    //     unlike: 3,
    //     like: 2,
    //     comment: "how are you",
    //     time: "1:50 am",
    //     Name: "Ahmaddddewwwd"),
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
                child: Consumer<AuthProvider>(
                  builder: (context , provider ,x) {
                    return Column(
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
                                  child: CommonImageView(
                                      svgPath: ImageConstant.imgSearch)),
                              prefixConstraints: BoxConstraints(
                                  minWidth: getSize(14.00),
                                  minHeight: getSize(14.00)))),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: size.height,
                                  width: size.width,
                                  margin: EdgeInsets.only(right: 1),
                                  child:
                                      Stack(alignment: Alignment.center, children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: size.height,
                                            width: size.width,
                                            decoration: BoxDecoration(
                                                color: Colors.white))),
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
                                                        itemCount:
                                                            Commentslist.length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          i = index;
                                                          return ListbgOneItemWidget(
                                                              Commentslist);
                                                        }),
                                                  ),
                                                ])))
                                  ]))))
                    ]);
                  }
                )),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {}),
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: CustomFloatingButton(
                height: 40.h,
                width: 40.w,
                // margin: EdgeInsets.only(bottom: 5.h),
                child: Padding(
                  padding: const EdgeInsets.only(
                   // bottom: 10000,
                  ),
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 25,
                      ),
                      onPressed: () {
                        onPress_Add_Comment(context);
                      },
                    ),
                  ),
                ),
                onTap: () {
                  onPress_Add_Comment(context);
                },
              ),
            )));
  }

  onPress_Add_Comment(BuildContext context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(45.0), topRight: Radius.circular(45.0)),
        ),
        builder: (context) => Form(
            key: _formKey1,
            child: Container(
                width: size.width,
                height: 420,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0)),
                  color: Colors.white,
                ),
                child: Stack(alignment: Alignment.centerLeft, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          height: size.height,
                          width: size.width,
                          margin: EdgeInsets.only(bottom: 20.h),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                    margin: EdgeInsets.only(
                                      top: 0,
                                    ),
                                    decoration: AppDecoration.fillWhiteA700
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderTL30),
                                    child: Expanded(
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            GestureDetector(
                                                child: Container(
                                                    height: 5.h,
                                                    width: 130.w,
                                                    margin: EdgeInsets.only(
                                                        left: 19.w,
                                                        top: 21.h,
                                                        right: 19.w),
                                                    decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .gray400,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular((2.71
                                                                    .r))))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 35.w,
                                                      top: 40.h,
                                                      right: 19.w),
                                                  child: Text(Provider.of<AuthProvider>(context).user_api.user.username.toString(),
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRubikMedium24),
                                                )),
                                            Container(
                                              width: 287.w,
                                              margin: EdgeInsets.only(
                                                left: 1.w,
                                                top: 25.h,
                                                right: 20.w,
                                              ),
                                              child: Text(
                                                  "Write to Post your Comment",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikRegular14),
                                            ),
                                            CustomTextFormField(
                                                width: 335.w,
                                                focusNode: FocusNode(),
                                                // controller:
                                                //     controller.msgControllerT,
                                                hintText: "Write your Comment",
                                                margin: EdgeInsets.only(
                                                  left: 20.w,
                                                  top: 40.h,
                                                  right: 20.w,
                                                ),
                                                textInputAction:
                                                    TextInputAction.done,
                                                alignment: Alignment.center,
                                                validator: (value) {
                                                  CommentText =
                                                      value.toString();
                                                  return null;
                                                }),
                                            CustomButton(
                                                width: 295.w,
                                                text: "Post",
                                                margin: EdgeInsets.only(
                                                  left: 21.w,
                                                  top: 15.h,
                                                  right: 20.w,
                                                  bottom: 45.h,
                                                ),
                                                shape:
                                                    ButtonShape.RoundedBorder28,
                                                onTap: () async{
EasyLoading.show(status: 'loading ...') ; 
                                                  await Future.delayed(Duration(seconds: 1)) ;

                                                  EasyLoading.dismiss() ;  
                                                  if (_formKey1.currentState!
                                                      .validate()) {
                                                    Get.snackbar('ok',
                                                        "Done Add Comment");

                                                    final co = Comments(
                                                        unlike: 0,
                                                        like: 0,
                                                        comment: CommentText,
                                                        time: DateTime.now().toString(),
                                                        Name: Provider.of<AuthProvider>(context , listen: false).user_api.user.username.toString());

                                                    setState(() {
                                                      Commentslist.add(co);
                                                      debugPrint(CommentText +
                                                          Commentslist.length
                                                              .toString());
                                                    });
                                                  }
                                                })
                                          ]),
                                    )))
                          ])))
                ]))));
  }

  onTapArrowleft1() {
    Get.back();
  }
}
