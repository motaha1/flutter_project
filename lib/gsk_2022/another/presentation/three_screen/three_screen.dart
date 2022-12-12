import 'package:final_grad_proj/gsk_2022/another/presentation/three_screen/clock.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/day_night_picker_test.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/test.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';

import '../../../presentation/doctor_appointment_screen/doctor_appointment_screen.dart';
import 'package:final_grad_proj/provider/provider.dart';
import 'controller/three_controller.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/appbar_stack.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/appbar_title.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/custom_button.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:date_picker_timeline/date_picker_timeline.dart';

class ThreeScreen extends StatefulWidget {
  static const orange = Color(0xFFFE9A75);
  static const dark = Color(0xFF333A47);
  static const double leftPadding = 50;
  @override
  State<ThreeScreen> createState() => _ThreeScreenState();
}

class _ThreeScreenState extends State<ThreeScreen> {
  final _defaultTimeRange = TimeRangeResult(
    TimeOfDay(hour: 14, minute: 50),
    TimeOfDay(hour: 15, minute: 20),
  );
  TimeRangeResult? _timeRange;
  @override
  DateTime today = DateTime.now();

  test(DateTime day, DateTime foucseDay) {
    setState(() {
      today = day;
      print(today.toString().split(" ")[0]);
      Provider.of<TodoClass>(context, listen: false).date =
          today.toString().split(" ")[0];
    });
  }

  @override
  void initState() {
    super.initState();
    _timeRange = _defaultTimeRange;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.gray50,
          body: Consumer<TodoClass>(builder: (context, provider, x) {
            return SingleChildScrollView(
              child: Container(
                width: size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height: getVerticalSize(
                          380.00,
                        ),
                        width: double.infinity,
                        margin: getMargin(
                          right: 10,
                        ),
                        child: TableCalendar(
                          selectedDayPredicate: (day) => isSameDay(day, today),
                          onDaySelected: test,
                          rowHeight: 43,
                          focusedDay: today,
                          firstDay: DateTime.now(),
                          lastDay: DateTime.utc(2030, 3, 4),
                        )),
                    Container(
                      width: double.infinity,
                      margin: getMargin(
                        top: 28,
                      ),
                      decoration: AppDecoration.outlineBlack9000f.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderTL45,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 20,
                              top: 35,
                              right: 20,
                            ),
                            child: Text(
                              "lbl_available_time".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRubikMedium16,
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 20,
                                top: 27,
                                right: 19,
                              ),
                              child: TimeRange(
                                fromTitle: Text(
                                  'FROM',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ThreeScreen.dark,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                toTitle: Text(
                                  'TO',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ThreeScreen.dark,
                                    fontWeight: FontWeight.bold,
                                    // fontWeight: FontWeight.w600,
                                  ),
                                ),
                                titlePadding: ThreeScreen.leftPadding,
                                textStyle: TextStyle(
                                  // fontWeight: FontWeight.normal,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 18, 191, 119),
                                ),
                                activeTextStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                                borderColor: Color.fromARGB(255, 245, 239, 239),
                                activeBorderColor: ThreeScreen.dark,
                                backgroundColor: Color.fromARGB(0, 45, 155, 33),
                                activeBackgroundColor:
                                    Color.fromARGB(255, 12, 87, 225),
                                firstTime: TimeOfDay(hour: 13, minute: 00),
                                lastTime: TimeOfDay(hour: 20, minute: 00),
                                initialRange: _timeRange,
                                timeStep: 60,
                                timeBlock: 60,
                                onRangeCompleted: (range) =>
                                    setState(() => _timeRange = range),
                              ),

                              /*Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration:
                                    AppDecoration.fillTealA70014.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        33.00,
                                      ),
                                      margin: getMargin(
                                        left: 14,
                                        top: 17,
                                        right: 13,
                                        bottom: 13,
                                      ),
                                      child: Text(
                                        "lbl_10_00_am".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRubikRegular13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 9,
                                ),
                                decoration:
                                    AppDecoration.fillTealA70014.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        32.00,
                                      ),
                                      margin: getMargin(
                                        left: 14,
                                        top: 17,
                                        right: 14,
                                        bottom: 13,
                                      ),
                                      child: Text(
                                        "lbl_12_00_am".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRubikRegular13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 9,
                                ),
                                decoration: AppDecoration.fillCyan600.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        39.00,
                                      ),
                                      margin: getMargin(
                                        left: 11,
                                        top: 15,
                                        right: 10,
                                        bottom: 11,
                                      ),
                                      child: Text(
                                        "lbl_02_00_pm".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRubikMedium14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 9,
                                ),
                                decoration:
                                    AppDecoration.fillTealA70014.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        35.00,
                                      ),
                                      margin: getMargin(
                                        left: 13,
                                        top: 17,
                                        right: 12,
                                        bottom: 13,
                                      ),
                                      child: Text(
                                        "lbl_03_00_pm".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRubikRegular13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 9,
                                ),
                                decoration:
                                    AppDecoration.fillTealA70014.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        35.00,
                                      ),
                                      margin: getMargin(
                                        left: 13,
                                        top: 17,
                                        right: 12,
                                        bottom: 13,
                                      ),
                                      child: Text(
                                        "lbl_04_00_pm".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRubikRegular13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 20,
                          top: 38,
                          right: 20,
                        ),
                        child: Text(
                          "msg_reminder_me_bef".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRubikMedium16,
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 20,
                            top: 27,
                            right: 19,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration:
                                    AppDecoration.fillTealA70014.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        29.00,
                                      ),
                                      margin: getMargin(
                                        left: 16,
                                        top: 16,
                                        right: 15,
                                        bottom: 14,
                                      ),
                                      child: Text(
                                        "lbl_30_minit".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRubikRegular13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 9,
                                ),
                                decoration:
                                    AppDecoration.fillTealA70014.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        29.00,
                                      ),
                                      margin: getMargin(
                                        left: 16,
                                        top: 16,
                                        right: 15,
                                        bottom: 14,
                                      ),
                                      child: Text(
                                        "lbl_40_minit".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRubikRegular13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 9,
                                ),
                                decoration: AppDecoration.fillCyan600.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        33.00,
                                      ),
                                      margin: getMargin(
                                        left: 14,
                                        top: 15,
                                        right: 13,
                                        bottom: 11,
                                      ),
                                      child: Text(
                                        "lbl_25_minit".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRubikMedium14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 9,
                                ),
                                decoration:
                                    AppDecoration.fillTealA70014.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getSize(
                                        30.00,
                                      ),
                                      margin: getMargin(
                                        left: 15,
                                        top: 16,
                                        right: 15,
                                        bottom: 14,
                                      ),
                                      child: Text(
                                        "lbl_10_minit".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRubikMedium13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 9,
                                ),
                                decoration:
                                    AppDecoration.fillTealA70014.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder30,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        29.00,
                                      ),
                                      margin: getMargin(
                                        left: 16,
                                        top: 15,
                                        right: 15,
                                        bottom: 15,
                                      ),
                                      child: Text(
                                        "lbl_35_minit".tr,
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtRubikRegular13,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ), */
                            ),
                          ),
                          CustomButton(
                            onTap: () {
                              print(
                                'Selected Range: ${_timeRange!.start.format(context)} - ${_timeRange!.end.format(context)}',
                              );
                              provider.time =
                                  '${_timeRange!.start.format(context)} - ${_timeRange!.end.format(context)}';
                              String y = _timeRange!.start.toString();
                              String x =
                                  TimeOfDay(hour: 14, minute: 00).toString();
                              print(x == y);
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          DoctorAppointmentScreen()));
                            },
                            width: 295,
                            text: "lbl_confirm".tr,
                            margin: getMargin(
                              left: 20,
                              top: 20,
                              right: 20,
                              bottom: 5,
                            ),
                            variant: ButtonVariant.FillLightblue700,
                            alignment: Alignment.center,
                          ),
                        ],
                      ),
                    ),
                    //  Text(provider.x.toString())

                    //Text(provider.date.toString()) ,
                    //Text(provider.time.toString())
                  ],
                ),
              ),
            );
          })),
    );
  }
}
