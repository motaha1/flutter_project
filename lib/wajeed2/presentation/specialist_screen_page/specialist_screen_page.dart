import 'package:final_grad_proj/wajeed2/presentation/specialist_screen_page/models/userPatient.dart';
//import 'package:final_grad_proj/wajeed2/presentation/walkthrough_three_screen/walkthrough_three_screen.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_bottom_barS.dart';

import '../specialist_screen_page/widgets/listdw_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed2/core/app_export.dart';
import 'package:final_grad_proj/wajeed2/widgets/app_bar/appbar_image.dart';
import 'package:final_grad_proj/wajeed2/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_button.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_drop_down.dart';
import 'package:final_grad_proj/wajeed2/widgets/custom_search_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class SpecialistScreenPage extends StatefulWidget {


  @override
  State<SpecialistScreenPage> createState() => MyWidgetStateS();
}

class MyWidgetStateS extends State<SpecialistScreenPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  static String Date_now = DateTime.now().toString().split(" ")[0];

  static int i = 0;
  static List<userPatient> userPatient2 = [
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
            Container(
              height: (812.h),
              width: size.width,
              margin: EdgeInsets.only(
                bottom: 18.h,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                          height: (812.h),
                          width: size.width,
                          margin: EdgeInsets.only(
                            bottom: 10.h,
                          ),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 10.h,
                                    ),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: size.width,
                                            child: Stack(
                                              alignment: Alignment.bottomCenter,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                      bottom: 10.h,
                                                    ),
                                                    decoration: AppDecoration
                                                        .gradientIndigoA400IndigoA401
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .customBorderBL20,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomAppBar(
                                                            height:
                                                                getVerticalSize(
                                                              56.00,
                                                            ),
                                                            leadingWidth: 68,
                                                            leading: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 12.h,
                                                                      left:
                                                                          26.w,
                                                                      right:
                                                                          5.w),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                  getHorizontalSize(
                                                                    21.00,
                                                                  ),
                                                                ),
                                                                child:
                                                                    CommonImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse164,
                                                                  height:
                                                                      getSize(
                                                                    50.00,
                                                                  ),
                                                                  width:
                                                                      getSize(
                                                                    50.00,
                                                                  ),
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                            actions: [
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .location_city,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 25,
                                                                ),
                                                                onPressed: () {
                                                                  // onTap_chat_Bot();
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .notification_add,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 25,
                                                                ),
                                                                onPressed: () {
                                                                  // onTap_chat_Bot();
                                                                },
                                                              ),
                                                              IconButton(
                                                                icon: Icon(
                                                                  Icons
                                                                      .dark_mode,
                                                                  color: Colors
                                                                      .white,
                                                                  size: 25,
                                                                ),
                                                                onPressed: () {
                                                                  // onTap_chat_Bot();
                                                                },
                                                              )
                                                            ]),
                                                        Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 26.w,
                                                              top: 25.h,
                                                              right: 19.w,
                                                              bottom: 10.h,
                                                            ),
                                                            child: RichText(
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        "Good Day"
                                                                            .tr,
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .black903,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        20,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text: " ",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .pinkA200,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        20.sp,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        "Dr.Ahmad",
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .whiteA700,
                                                                      fontSize:
                                                                          (22.sp),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                left: 40.w,
                                                              ),
                                                              child: Text(
                                                                "Enjoy managing your tasks",
                                                                style: TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            45,
                                                                            51,
                                                                            61)),
                                                              ),
                                                            )),
                                                        CustomSearchView(
                                                          width: 327.w,
                                                          focusNode:
                                                              FocusNode(),
                                                          hintText:
                                                              "msg_search_for_your"
                                                                  .tr,
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 24.w,
                                                            top: 10.h,
                                                            right: 24.w,
                                                          ),
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          prefix: Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 22.w,
                                                              top: 18.h,
                                                              right: 10.w,
                                                              bottom: 18.h,
                                                            ),
                                                            child:
                                                                CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSearch,
                                                            ),
                                                          ),
                                                          prefixConstraints:
                                                              BoxConstraints(
                                                            minWidth: getSize(
                                                              14.sp,
                                                            ),
                                                            minHeight: getSize(
                                                              14.sp,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ])))
                          ]))),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 23.w, right: 23.w, bottom: 30.h, top: 190.h),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: TableCalendar(
                        firstDay: DateTime.utc(2023, 1, 1),
                        // DateTime.now(),
                        lastDay: DateTime.utc(2030, 3, 4),
                        focusedDay: _focusedDay,
                        calendarFormat: _calendarFormat,
                        selectedDayPredicate: (day) {
                          return isSameDay(_selectedDay, day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          if (!isSameDay(_selectedDay, selectedDay)) {
                            setState(() {
                              _selectedDay = selectedDay;
                              _focusedDay = focusedDay;
                              Date_now = _selectedDay.toString().split(" ")[0];
                              debugPrint(_selectedDay.toString().split(" ")[0]);
                            });
                          }
                        },
                        onFormatChanged: (format) {
                          if (_calendarFormat != format) {
                            setState(() {
                              _calendarFormat = format;
                            });
                          }
                        },
                        onPageChanged: (focusedDay) {
                          _focusedDay = focusedDay;
                        },
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 20.w, top: 460.h, bottom: 15.h),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Patient List",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "                             $Date_now",
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      )),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                          margin: EdgeInsets.only(top: 580.h),
                          child: ListView.builder(
                              itemCount: userPatient2.length,
                              itemBuilder: (context, index) {
                                i = index;
                                return list(context);
                              })))
                ],
              ),
            ),
          ]),
        ),
        bottomNavigationBar:
            CustomBottomBar(onChanged: (BottomBarEnum type) {}),
      ),
    );
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
                                MyWidgetStateS
                                    .userPatient2[MyWidgetStateS.i].Name,
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
                                  MyWidgetStateS
                                          .userPatient2[MyWidgetStateS.i].Date +
                                      "\n" +
                                      MyWidgetStateS
                                          .userPatient2[MyWidgetStateS.i].time,
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
