import 'package:final_grad_proj/wajeed2/presentation/specialist_screen_page/models/userPatient.dart';
import 'package:final_grad_proj/wajeed2/presentation/specialist_screen_page/specialist_screen_page.dart';

import '../../chat_page/models/UserChat.dart';

import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class ListdwItemWidget extends StatefulWidget {


  @override
  State<ListdwItemWidget> createState() => MyWidgetStateL();
}

class MyWidgetStateL extends State<ListdwItemWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
// class ListdwItemWidget extends StatelessWidget {
  //ListdwItemWidget();
  //List? v;

  

  @override
  Widget build(BuildContext context) {
    return Card(
        //alignment: Alignment.bottomLeft,
        child: GestureDetector(
      onTap: () {
        // CallsScreen.i = index;
        // onTapRowtime!();
      },
      child: Padding(
        padding: EdgeInsets.only(
          left: 24.w,
          top: 12.5.h,
          right: 24.w,
          bottom: 12.5.h,
        ),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: (52.h),
                      width: (52.w),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                (26.r),
                              ),
                              child: CommonImageView(
                                imagePath: ImageConstant.patient,
                                height: (52.h),
                                width: (52.w),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 12.w, top: 3.h, bottom: 0.h),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                MyWidgetStateS.userPatient2[MyWidgetStateS.i].Name,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRubikRomanMedium20.copyWith(
                                  height: 1.20.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 3.h, right: 10.w, bottom: 0.h),
                                child: Text(
                                  MyWidgetStateS.userPatient2[MyWidgetStateS.i].Date +
                                      "\n" +
                                      MyWidgetStateS.userPatient2[MyWidgetStateS.i].time,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRubikRomanLight12Gray601
                                      .copyWith(
                                    height: 1.25.h,
                                  ),
                                ),
                              ),
                            ])),
                  ]),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Container(
                                  height: 25.h,
                                  width: 25.w,
                                  margin: EdgeInsets.only(
                                      left: 10.w, top: 5.h, bottom: 20.h),
                                  child: IconButton(
                                    icon: Icon(Icons.cancel, 
                                        color: Color.fromARGB(255, 250, 50, 0),
                                        ),
                                    onPressed: () => {
                                      setState(() {
                                        MyWidgetStateS.userPatient2.removeAt(0);
                                      })
                                    },
                                  )),
                              Container(
                                  height: 25.h,
                                  width: 25.w,
                                  margin: EdgeInsets.only(
                                      left: 10.w, top: 5.h, bottom: 20.h),
                                  child: IconButton(
                                    icon: Icon(Icons.done , 
                                        color: Color.fromARGB(255, 6, 10, 252),
                                        ),
                                    onPressed: () => {},
                                  )),
                            ],
                          ),
                        ])
                  ],
                ),
              ),
            ]),
      ),
    ));
  }
}
