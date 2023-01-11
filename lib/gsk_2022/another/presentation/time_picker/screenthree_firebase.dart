import 'package:final_grad_proj/data_repositories/dio_helper.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/three_screen/clock.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/Availability.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/TimeRangePickerDialog.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/day_night_picker_test.dart';
import 'package:final_grad_proj/gsk_2022/another/presentation/time_picker/test.dart';
import 'package:final_grad_proj/gsk_2022/presentation/thank_you_screen_dialog/controller/thank_you_screen_controller.dart';
import 'package:final_grad_proj/gsk_2022/presentation/thank_you_screen_dialog/thank_you_screen_dialog.dart';
import 'package:final_grad_proj/models/appoiment.dart';
import 'package:final_grad_proj/provider/auth_provider.dart';
import 'package:final_grad_proj/screens_test/splash_test.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:time_range/time_range.dart';

import '../../../presentation/doctor_appointment_screen/doctor_appointment_screen.dart';
import 'package:final_grad_proj/provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/another/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/appbar_stack.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/appbar_title.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/gsk_2022/another/widgets/custom_button.dart';
import 'package:table_calendar/table_calendar.dart';

import 'package:date_picker_timeline/date_picker_timeline.dart';

class ThreeScreen_new extends StatefulWidget {
  String doctorId;

  ThreeScreen_new(this.doctorId);
  @override
  State<ThreeScreen_new> createState() => _ThreeScreenState(this.doctorId);
}

class _ThreeScreenState extends State<ThreeScreen_new> {
  String? doctorId;
  List<dynamic>? po = [];
  _ThreeScreenState(this.doctorId);

  @override
  DateTime today = DateTime.now();

  static List<int> timee = [9, 10, 11, 12, 13, 14, 15, 16, 17, 19, 20, 21, 22];

  void func() {
    List<int> time_for_edit = [
      9,
      10,
      11,
      12,
      13,
      14,
      15,
      16,
      17,
      19,
      20,
      21,
      22
    ];
    if (po!.length != 0) {
      po!.sort((a, b) => a.start.compareTo(b.start));
      po!.forEach((element) {
        int x = time_for_edit.indexOf(convert(element.start));
        int y = time_for_edit.indexOf(convert(element.end));
        time_for_edit.removeRange(x, y);
      });
    }
    timee = time_for_edit;
    availability.available = timee;
    print(timee);

    //    int x = timee.indexOf(convert('09:00 AM'));
    // timee.removeAt(x);
    //     int y = timee.indexOf(convert('10:00 AM'));
    //      timee.removeAt(y);
    // print(timee);
  }

  test(DateTime day, DateTime foucseDay) async {
    today = day;
    print(today.toString().split(" ")[0]);
    Provider.of<AuthProvider>(context, listen: false).date =
        today.toString().split(" ")[0];

    Provider.of<AuthProvider>(context, listen: false).selected_date_appoiment =
        today.toString().split(" ")[0];

    // await Provider.of<AuthProvider>(context, listen: false)
    //     .getAllappoiment('mudy2012@engineer.com');

    //po = Provider.of<AuthProvider>(context, listen: false).selectedApp;
    EasyLoading.show(status: 'loading...');
    po = await DioHelper.diohelper
        .getAppoimnet(doctorId!, today.toString().split(" ")[0]);

    print(po);
    func();
    EasyLoading.dismiss();

    setState(
      () {},
    );
  }

  int convert(String x) {
    if (x == '09:00 AM') {
      return 9;
    }

    if (x == '10:00 AM') {
      return 10;
    }

    if (x == '11:00 AM') {
      return 11;
    }

    if (x == '12:00 PM') {
      return 12;
    }

    if (x == '01:00 PM') {
      return 13;
    }

    if (x == '02:00 PM') {
      return 14;
    }

    if (x == '03:00 PM') {
      return 15;
    }
    if (x == '04:00 PM') {
      return 16;
    }
    if (x == '05:00 PM') {
      return 17;
    }
    if (x == '06:00 PM') {
      return 18;
    }

    if (x == '07:00 PM') {
      return 19;
    }
    if (x == '08:00 PM') {
      return 20;
    }

    if (x == '09:00 PM') {
      return 21;
    }

    return 0;
  }

  Availability availability = Availability(
      date: DateTime.now(),
      reservationFrom: 9,
      reservationTo: 21,
      available: timee);

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.gray50,
          body: Consumer<AuthProvider>(builder: (context, provider, x) {
            return Container(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TableCalendar(
                    selectedDayPredicate: (day) => isSameDay(day, today),
                    onDaySelected: test,
                    rowHeight: 43,
                    focusedDay: today,
                    firstDay: DateTime.now(),
                    lastDay: DateTime.utc(2030, 3, 4),
                  ),

                  SizedBox(
                    height: 50.h,
                  ),
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
                            child: Expanded(
                                child: TimeRangePickerDialog(
                                    availability, 4, 4, 40)),
                          ),
                        ),
                        CustomButton(
                          onTap: () async {
                            print(provider.start ?? 'null');
                            print(provider.end ?? 'null');
                            // Appoiment app = new Appoiment(
                            //     doctor: doctorId!,
                            //     patiant: provider.loggedUser!.email,
                            //     date: provider.date!,
                            //     start: provider.start!,
                            //     end: provider.end!);
                            EasyLoading.show(
                                status: 'Appointment is being booked ..... ');
                            print('this is id doctor -----' +
                                doctorId.toString());
                            print(provider.user_api.id ?? 'no idddd patient');
                            await DioHelper.diohelper.addAppoiment(
                                provider.start!,
                                provider.end!,
                                provider.date!,
                                provider.user_api.id.toString(),
                                doctorId!.toString());

                            print(
                              provider.user_api.user.mobile
                                  .toString()
                                  .substring(1),
                            );
                            await DioHelper.diohelper.sendsms(
                                provider.user_api.user.mobile
                                    .toString()
                                    .substring(1),
                                'An appointment has been booked for you  from ${provider.start.toString()} to ${provider.end.toString()}');

                            EasyLoading.dismiss();
                            Get.snackbar( 'New booking','An appointment has been booked for you  from ${provider.start.toString()} to ${provider.end.toString()}');
                            //provider.addNewAppoiment(app);
                            onTapConfirm();
                            //  Get.off(() => splash_test());

                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (BuildContext context) =>
                            //             DoctorAppointmentScreen()));
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
            );
          })),
    );
  }
}

onTapConfirm() {
  Get.defaultDialog(
    title: '',
    backgroundColor: Colors.transparent,
    content: ThankYouScreenDialog(
      Get.put(
        ThankYouScreenController(),
      ),
    ),
  );
}
