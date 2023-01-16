import 'package:final_grad_proj/wajeed2/presentation/calls_screen/models/usercall.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_bottom_bar.dart';
import '../../widgets/custom_search_view.dart';
import '../calls_screen/widgets/calls_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallsScreen extends StatelessWidget {
  static String NameUser = "";
  static int i = 0;
  static List<usercall> usercall1 = [
    usercall(subtitel: "call miss", titel: "Anas"),
    usercall(subtitel: "call miss", titel: "wajeed"),
    usercall(subtitel: "call outgoing", titel: "Ahmad"),
    usercall(subtitel: "call outgoing", titel: "Mohammad"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
          height: 812,
          width: size.width,
          child: Stack(alignment: Alignment.center, children: [
            Align(
                alignment: Alignment.centerLeft,
                child: CommonImageView(
                    imagePath: ImageConstant.BackgroundChat,
                    height: 812.h,
                    width: 375.w)),
            Align(
                alignment: Alignment.topCenter,
                child: Row(
                  children: [
                    Container(
                      height: 25.h,
                      width: 25.w,
                      margin:
                          EdgeInsets.only(left: 30.w, top: 1.h, bottom: 13.h),
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () {
                          onTap_arrow_back();
                        },
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            left: 100.w, top: 20.h, bottom: 13.h),
                        child: Text("Calls",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium24)),
                    Container(
                      height: 25.h,
                      width: 25.w,
                      margin:
                          EdgeInsets.only(left: 110.w, top: 15.h, bottom: 13.h),
                      child: IconButton(
                        icon: Icon(
                          Icons.snapchat,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () {
                          onTap_chat_Bot();
                        },
                      ),
                    ),
                  ],
                )),
            Padding(
              padding: EdgeInsets.only(
                  left: 23.w, right: 23.w, bottom: 10.h, top: 65.h),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: CustomSearchView(
                      width: 327.w,
                      focusNode: FocusNode(),
                      hintText: "msg_search_for_your".tr,
                      margin: EdgeInsets.only(left: 1.w),
                      prefix: Container(
                          margin: EdgeInsets.only(
                              left: 22.w, top: 18.h, right: 10.w, bottom: 18.h),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgSearch)),
                      prefixConstraints: BoxConstraints(
                          minWidth: getSize(14.00),
                          minHeight: getSize(14.00)))),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Container(
                    margin: EdgeInsets.only(top: 120.h),
                    child: ListView.builder(
                        itemCount: usercall1.length,
                        itemBuilder: (context, index) {
                          i = index;
                          return CallsItemWidget(usercall1
                              //  onTapRowtime: onTapRowtime
                              );
                        })))
          ])),
      bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {}),
    ));
  }

  onTap_arrow_back() {
    Get.toNamed(AppRoutes.chatpage);
  }

  onTap_chat_Bot() {
    Get.toNamed(AppRoutes.Messagescreen_Bot);
  }
}
