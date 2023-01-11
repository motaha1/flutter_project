import 'controller/users_controller.dart';
import 'package:flutter/material.dart';
import 'package:final_grad_proj/wajeed/core/app_export.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const List<String> item = [
  'Doctor',
  'Nurse',
  'Baby Care',
  'Physician',
  'Elderly Care'
];

class UsersScreen extends GetWidget<UsersController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: size.height,
                        width: size.width,
                        child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: CommonImageView(
                                      imagePath: ImageConstant.Background,
                                      height: (812.h),
                                      width: (375.w))),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 40.w,
                                                    top: 153.h,
                                                    right: 40.w),
                                                child: Text(
                                                    "Choose Your User Type",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikMedium24))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 40.w,
                                                    top: 16.h,
                                                    right: 40.w),
                                                child: Text(
                                                    "Choose the type according to your need!",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRubikRegular14))),
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 40.w,
                                                    top: 75.h,
                                                    right: 40.w,
                                                    bottom: 300.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapPatient();
                                                          },
                                                          child: Expanded(
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        top: 32
                                                                            .h,
                                                                        bottom: 15
                                                                            .h),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      SizedBox(
                                                                        width:
                                                                            100.w,
                                                                      ),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child: CommonImageView(
                                                                              imagePath: ImageConstant.patient,
                                                                              height: (104.h),
                                                                              width: (104.w))),
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child: Padding(
                                                                              padding: EdgeInsets.only(left: 26.w, top: 18.h, right: 26.w),
                                                                              child: Text("Patient".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRubikMedium12)))
                                                                    ])),
                                                          )),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapspicalist();
                                                          },
                                                          child: Expanded(
                                                            child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 32
                                                                            .w),
                                                                child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      CommonImageView(
                                                                          imagePath: ImageConstant
                                                                              .spicalist,
                                                                          height: (148
                                                                              .h),
                                                                          width:
                                                                              (104.w)),
                                                                      DropdownButtomLocation(),
                                                                    ])),
                                                          ))
                                                    ])))
                                      ]))
                            ]))))));
  }

  onTapPatient() {
    Get.toNamed(AppRoutes.patientDetailsScreenoneScreen);
  }

  onTapspicalist() {
    Get.toNamed(AppRoutes.signUpScreen);
  }
}

class DropdownButtomLocation extends StatefulWidget {


  @override
  State<DropdownButtomLocation> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtomLocation> {
  String dropdownValue = item.first;

  @override
  Widget build(BuildContext context) {
    //textfirst = itemN.first;
    return DropdownButton<String>(
      value: dropdownValue,
      //icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Color.fromARGB(255, 71, 179, 241)),
      underline: Container(
        height: 2,
        color: Color.fromARGB(255, 71, 179, 241),
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: item.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
