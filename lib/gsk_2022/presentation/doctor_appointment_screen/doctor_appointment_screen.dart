import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/appoiments_widget.dart';
import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/booking.dart';
import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/show_appoiment.dart';
import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/text2.dart';
import 'package:final_grad_proj/gsk_2022/presentation/doctor_appointment_screen/textfild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'package:final_grad_proj/provider/provider.dart';
import 'controller/doctor_appointment_controller.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/gsk_2022/core/app_export.dart';
import 'package:final_grad_proj/gsk_2022/widgets/app_bar/appbar_stack.dart';
import 'package:final_grad_proj/gsk_2022/widgets/app_bar/custom_app_bar.dart';
import 'package:final_grad_proj/gsk_2022/widgets/custom_button.dart';
import 'package:final_grad_proj/gsk_2022/presentation/thank_you_screen_dialog/thank_you_screen_dialog.dart';
import 'package:final_grad_proj/gsk_2022/presentation/thank_you_screen_dialog/controller/thank_you_screen_controller.dart';

class DoctorAppointmentScreen extends GetWidget<DoctorAppointmentController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            // appBar: AppBar(
            //   title: Text('hello'),
            //   backgroundColor: Colors.white,
            // ),
            body: Consumer<TodoClass>(builder: (context, provider, x) {
              return SingleChildScrollView(
                 keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,

                child: Container(
                   
              
                    height: size.height,
                    width: size.width,
                    child: Stack(alignment: Alignment.centerLeft, children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: CommonImageView(
                              imagePath: ImageConstant.imgBg,
                              height: (812.00.h),
                              width: (375.00.w))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Column(children: [
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 20.w, top: 36.h, right: 19.w),
                                child: Column(mainAxisSize: MainAxisSize.min,
                                    // crossAxisAlignment:
                                    //  CrossAxisAlignment.center,
              
                                    children: [
                                      CustomAppBar(
                                          height: (56.00.h),
                                          leadingWidth: 50.w,
                                          leading: AppbarStack(
                                              margin: EdgeInsets.only(left: 20.w),
                                              onTap: onTapStackarrowleft),
                                          title: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 19.w),
                                              child: Text("lbl_appointment".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style:
                                                      AppStyle.txtRubikBold18))),
                                      SizedBox(
                                        height: 50,
                                      ),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: EdgeInsets.only(),
                                              child: Text(
                                                  "lbl_appointment_for".tr,
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRubikMedium16))),
                                      Column(
                                        children: [
                                          EmailInputFb2(
                                              title: 'patient name',
                                              hint: 'patient name',
                                              inputController:
                                                  provider.namecontroller),
                                          EmailInputFb3(
                                            title: provider.date ?? '',
                                            hint:
                                                'reservation date is ${provider.date}  ',
                                          ),
                                          EmailInputFb3(
                                            title: provider.time ?? '',
                                            hint:
                                                'reservation time is ${provider.time}  ',
                                          ),
                                          //Text(provider.time ?? '1-5')
                                          CustomButton(
                                              width: 295,
                                              text: "lbl_confirm".tr,
                                              margin: getMargin(
                                                  left: 20,
                                                  top: 20,
                                                  right: 20,
                                                  bottom: 50),
                                              onTap: () async {
                                               await provider.insertNewTask();
                                                // Navigator.pop(context);
                                                // onTapConfirm;
              
                                                /*****************************************************important */
              
               onTapConfirm()  ;
              
                                                // print(provider.allTasks);
              
                                                // Navigator.pushReplacement(
                                                //     context,
                                                //     MaterialPageRoute(
                                                //         builder: (BuildContext
                                                //                 context) =>
                                                //             appoiment()));
                                              },
                                              alignment: Alignment.center)
                                        ],
                                      )
                                    ])),
                          ]))
                    ])),
              );
            })));
  }

  onTapStackarrowleft() {
    Get.toNamed(AppRoutes.doctorDetailsScreen);
  }

  Future<void> onTapRowdate() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller.doctorAppointmentModelObj.value.selectedDateTxt,
        firstDate: DateTime(1970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.doctorAppointmentModelObj.value.selectedDateTxt = dateTime;
      controller.doctorAppointmentModelObj.value.dateTxt.value =
          dateTime.format(DD_MM_YYYY);
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
}
