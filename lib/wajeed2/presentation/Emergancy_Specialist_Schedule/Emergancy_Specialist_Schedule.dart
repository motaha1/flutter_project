import 'package:final_grad_proj/wajeed2/presentation/Patient%20Records/models/userPatient.dart';
import 'package:final_grad_proj/wajeed2/presentation/Patient%20Records/widgets/Patient_Records_widget.dart';
import 'package:final_grad_proj/wajeed2/presentation/calls_screen/models/usercall.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_bottom_barS.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_search_view.dart';
import '../calls_screen/widgets/calls_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmergancySpecialistSchedule extends StatefulWidget {
 

  @override
  State<EmergancySpecialistSchedule> createState() => MyWidgetState();
}

class MyWidgetState extends State<EmergancySpecialistSchedule> {
  static String NameUser = "";
  static int i = 0;

  List<userPatient> GlobalList = [
    userPatient(Name: "Ahmad", Date: "Date_now.toString()", time: "Anas"),
    userPatient(Name: "Mohammad", Date: "wajeed", time: "Anas"),
    userPatient(Name: "Wajeed", Date: "Ahmad", time: "Anas"),
    userPatient(Name: "Ali", Date: "Mohammad", time: "Anas"),
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
                    IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 23,
                  ),
                  onPressed: () {
                    Get.toNamed(AppRoutes.homeContainerScreen);
                  },
                ),
                    Container(
                        margin: EdgeInsets.only(
                            left: 15.w, top: 17.h, bottom: 16.h),
                        child: Text("Emergency Patients Records",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium24)),
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
                      hintText: "Search For Patient",
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
                alignment: Alignment.bottomLeft,
                child: Container(
                    margin: EdgeInsets.only(top: 120.h),
                    child: ListView.builder(
                        itemCount: GlobalList.length,
                        itemBuilder: (context, index) {
                          i = index;
                          return list(context);
                        })))
          ])),
      bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {}),
    ));
  }

  Widget list(BuildContext context) {
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
                                GlobalList[MyWidgetState.i].Name,
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
                                  GlobalList[MyWidgetState.i].Date +
                                      "\n" +
                                      GlobalList[MyWidgetState.i].time,
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
                                    icon: Icon(Icons.cancel , 
                                        color: Color.fromARGB(255, 250, 50, 0),
                                        ),
                                    onPressed: () => {
                                      setState(() {
                                        GlobalList.removeAt(0);
                                      })
                                    },
                                  )),
                              Container(
                                  height: 25.h,
                                  width: 25.w,
                                  margin: EdgeInsets.only(
                                      left: 10.w, top: 5.h, bottom: 20.h),
                                  child: IconButton(
                                    icon: Icon( Icons.done , 
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
